import os
import csv


class ConfigAttribute:
    def __init__(self, typecode, name, value):
        self.typecode = typecode
        self.name = name
        self.value = value

    def fromStr(string):
        typecode = string.split(":")[0]
        value = string.split("=")[-1]
        name = "".join(("".join(string.split(":")[1:])).split("=")[:-1])
        return ConfigAttribute(typecode, name, value)

    def fromConfigAttribute(other):
        return ConfigAttribute(other.typecode, other.name, other.value)

    def __str__(self):
        return f"{self.typecode}:{self.name}={self.value}"

    def __repr__(self):
        return str(self)


class ForgeCFGParser:
    def __init__():
        pass

    def parse_toplevel_line(rdict, line):
        stripped = line.strip()
        if stripped.startswith("#") or stripped == "":
            return None
        if stripped.endswith("{"):
            # sections with spaces will be "quoted in the dictionary keys"
            name = stripped.split("{")[0].strip()
            rdict[name] = {}
            return name

    def parse_attributelist_line(rdict, listname, line):
        stripped = line.strip()
        if stripped.startswith("#") or stripped == "":
            return None
        if stripped.startswith("}"):
            return -1  # use an enum or something more clean
        attribute = ConfigAttribute.fromStr(stripped)
        rdict[listname][attribute.name] = attribute
        return attribute.name

    def parse(filename):
        rdict = {}
        lines = None
        with open(filename, "r") as f:
            lines = f.readlines()
        parsing_toplevel = True
        current_listname = None
        for line in lines:
            if parsing_toplevel:
                rval = ForgeCFGParser.parse_toplevel_line(rdict, line)
                if rval is not None:
                    current_listname = rval
                    parsing_toplevel = False
            else:
                rval = ForgeCFGParser.parse_attributelist_line(
                    rdict, current_listname, line
                )
                if rval == -1:
                    current_listname = None
                    parsing_toplevel = True
        return rdict


mod_prefix_map = {
    "biomesoplenty": "BOP",
    "auxbiomes": "AUX",
    "betterwyvernlairmocreatureaddon": "BMC",
    "appletreesrev": "APP",
    "environs": "ENV",
    "explorercraft": "EXP",
    "fossil": "FOSS",
    "iceandfire": "ICEFIRE",
    "midnight": "MID",
    "mocreatures": "MOCREATURES",
    "minecraft": "Min",
    "ancientspellcraft": "SPELL",
    "spookybiomes": "SPOOK",
    "betterogrelair": "BOG",
    "traverse": "TRAV",
}
# make it a two-way mapping
for key in mod_prefix_map.copy():
    value = mod_prefix_map[key]
    mod_prefix_map[value] = key


def read_dump_csv(filename):
    rlist = []
    with open(filename, "r") as f:
        reader = csv.DictReader(f)
        for row in reader:
            rlist.append(row)
    return rlist


if __name__ == "__main__":
    cfg = ForgeCFGParser.parse("geographicraft.cfg")
    # print(cfg["externalbiomeids"])
    dump = read_dump_csv("biome.csv")
    line_replacements = {}

    dumpped_id_map = {}
    for row in dump:
        dumpped_comparison_name = row["Name"].replace(" ", "")
        dumpped_modname = row["Registry Name"].split(":")[0]
        id = row["ID"]
        dumpped_comparison_name = f"{dumpped_modname}:{dumpped_comparison_name}"
        dumpped_id_map[dumpped_comparison_name] = id

    # print(dump)
    for biome_attribute_key in cfg["externalbiomeids"]:
        biome_attribute = cfg["externalbiomeids"][biome_attribute_key]
        modname = None
        modkey = None
        for key in mod_prefix_map:
            if biome_attribute.name.split('"')[1].startswith(key):
                modname = mod_prefix_map[key]
                modkey = key
        if modname is None:
            print("No corresponding mod! Need to update!")
            exit(1)
        configured_id = biome_attribute.value
        configured_comparison_name = biome_attribute.name.split('"')[1][:-3]
        configured_comparison_name = configured_comparison_name.replace(
            mod_prefix_map[modname], ""
        )
        configured_comparison_name = configured_comparison_name.replace(" ", "")
        configured_comparison_name = f"{modname}:{configured_comparison_name}"

        # Ugly Shoe-horning biome name differences:
        shoehorn_dict = {
            "betterwyvernlairmocreatureaddon:WyvernBiome": "betterwyvernlairmocreatureaddon:WyvernLairBiome",
            "betterogrelair:Forest": "betterogrelair:OgreLairForest",
            "betterogrelair:Plains": "betterogrelair:OgreLairPlains",
            "biomesoplenty:AlpsFootHills": "biomesoplenty:AlpsFoothills",
            "biomesoplenty:Chapparel": "biomesoplenty:Chaparral",
            "biomesoplenty:CherryBlossom": "biomesoplenty:CherryBlossomGrove",
            "biomesoplenty:Lakeland": "biomesoplenty:LandofLakes",
            "biomesoplenty:NetherCorruptedSands": "biomesoplenty:CorruptedSands",
            "biomesoplenty:NetherPhantasmoInferno": "biomesoplenty:PhantasmagoricInferno",
            "biomesoplenty:Redwood": "biomesoplenty:RedwoodForest",
            "biomesoplenty:SnowyConifers": "biomesoplenty:SnowyConiferousForest",
            "environs:ColdPineTaigaHills": "environs:ColdPineTaigaM",
            "environs:DryOakForestHills": "environs:DryOakForestM",
            "environs:FloatingEndForest": "environs:EndForestM",
            "environs:PineTaigaHills": "environs:PineTaigaM",
            "environs:StoneHIlls": "environs:StoneHills",
            "environs:TallOakForestHills": "environs:TallOakForestM",
            "environs:WastelandEroded": "environs:ErodedWasteland",
            "fossil:LairofDarkness": "fossil:anu",
            "fossil:Treasure": "fossil:treasure",
            "midnight:CrystalSpire": "midnight:CrystalSpires",
            "midnight:FungiForestHills": "midnight:HillyFungiForest",
            "midnight:VigilentForestHills": "midnight:HillyVigilantForest",
            "mocreatures:WyvernBiome": "mocreatures:WyvernLair",
            "ancientspellcraft:Pocket": "ancientspellcraft:pocket",
            "traverse:BirchHills": "traverse:BirchForestedHills",
            "traverse:GreenSwamp": "traverse:LushSwamp",
        }

        if configured_comparison_name in shoehorn_dict:
            configured_comparison_name = shoehorn_dict[configured_comparison_name]

        if dumpped_id_map[configured_comparison_name] != configured_id:
            print(
                f"{modname} : {biome_attribute.name} -- {configured_comparison_name} -- {dumpped_id_map[configured_comparison_name]} -- {configured_id}"
            )
            new_attribute = ConfigAttribute.fromConfigAttribute(
                cfg["externalbiomeids"][biome_attribute_key]
            )
            new_attribute.value = dumpped_id_map[configured_comparison_name]
            line_replacements[
                f"{new_attribute.typecode}:{new_attribute.name}="
            ] = f"    {str(new_attribute)}{os.linesep}"

    # Vanilla biomes
    for biome_attribute_key in cfg["vanillabiomeids"]:
        biome_attribute = cfg["vanillabiomeids"][biome_attribute_key]
        modname = "minecraft"
        modkey = ""

        configured_id = biome_attribute.value
        configured_comparison_name = biome_attribute.name.split('"')[1][:-3]
        configured_comparison_name = configured_comparison_name.replace(
            mod_prefix_map[modname], ""
        )
        configured_comparison_name = configured_comparison_name.replace(" ", "")
        configured_comparison_name = f"{modname}:{configured_comparison_name}"

        # Ugly Shoe-horning biome name differences:
        shoehorn_dict = {
            "minecraft:Taiga(snowless)": "minecraft:Taiga",
            "minecraft:Taiga(snowless)M": "minecraft:TaigaM",
        }

        if configured_comparison_name in shoehorn_dict:
            configured_comparison_name = shoehorn_dict[configured_comparison_name]

        if dumpped_id_map[configured_comparison_name] != configured_id:
            print(
                f"{modname} : {biome_attribute.name} -- {configured_comparison_name} -- {dumpped_id_map[configured_comparison_name]} -- {configured_id}"
            )
            new_attribute = ConfigAttribute.fromConfigAttribute(
                cfg["vanillabiomeids"][biome_attribute_key]
            )
            new_attribute.value = dumpped_id_map[configured_comparison_name]
            line_replacements[
                f"{new_attribute.typecode}:{new_attribute.name}="
            ] = f"    {str(new_attribute)}{os.linesep}"
    print(line_replacements)

    current_file_data = None
    with open("geographicraft.cfg", "r") as f:
        current_file_data = f.readlines()

    for line_idx in range(len(current_file_data)):
        for line_replacement in line_replacements:
            if current_file_data[line_idx].find(line_replacement) != -1:
                current_file_data[line_idx] = line_replacements[line_replacement]

    with open("geographicraft.cfg", "w") as f:
        for line in current_file_data:
            f.write(line)
