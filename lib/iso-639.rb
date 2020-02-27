# encoding: UTF-8
# frozen_string_literal: true
# http://www.loc.gov/standards/iso639-2/ascii_8bits.html

class ISO_639 < Array
  # Redefine `[]` to freeze all strings and arrays.
  #
  # Ruby 2.3+ uses the `frozen_string_literal` magic comment to freeze all
  # strings, while previous versions require the `#map` approach.
  def self.[](a3_bib, a3_term, a2, english_name, french_name, spanish_name)
    if a3_bib.frozen? # then Ruby 2.3+
      super(a3_bib, a3_term, a2, english_name, french_name, spanish_name).freeze
    else
      super(
        a3_bib.freeze,
        a3_term.freeze,
        a2.freeze,
        english_name.freeze,
        french_name.freeze,
	spanish_name.freeze
      ).freeze
    end
  end

  # The ISO 639-2 dataset as an array of entries. Each entry is an array with
  # the following format:
  # * [0]: an alpha-3 (bibliographic) code
  # * [1]: an alpha-3 (terminologic) code (when given)
  # * [2]: an alpha-2 code (when given)
  # * [3]: an English name
  # * [4]: a French name of a language
  # * [5]: a Spanish name of a language
  ISO_639_2 = [
    self["aar", "", "aa", "Afar", "afar","afar"],
    self["abk", "", "ab", "Abkhazian", "abkhaze","abjaso"],
    self["ace", "", "", "Achinese", "aceh",""],
    self["ach", "", "", "Acoli", "acoli",""],
    self["ada", "", "", "Adangme", "adangme",""],
    self["ady", "", "", "Adyghe; Adygei", "adyghé",""],
    self["afa", "", "", "Afro-Asiatic languages", "afro-asiatiques, langues", ""],
    self["afh", "", "", "Afrihili", "afrihili", ""],
    self["afr", "", "af", "Afrikaans", "afrikaans","afrikaans"],
    self["ain", "", "", "Ainu", "aïnou",""],
    self["aka", "", "ak", "Akan", "akan","akano"],
    self["akk", "", "", "Akkadian", "akkadien", ""],
    self["alb", "sqi", "sq", "Albanian", "albanais", "albanés"],
    self["ale", "", "", "Aleut", "aléoute", ""],
    self["alg", "", "", "Algonquian languages", "algonquines, langues", ""],
    self["alt", "", "", "Southern Altai", "altai du Sud", ""],
    self["amh", "", "am", "Amharic", "amharique","amárico"],
    self["ang", "", "", "English, Old (ca.450-1100)", "anglo-saxon (ca.450-1100)", ""],
    self["anp", "", "", "Angika", "angika", ""],
    self["apa", "", "", "Apache languages", "apaches, langues", ""],
    self["ara", "", "ar", "Arabic", "arabe", "árabe"],
    self["arc", "", "", "Official Aramaic (700-300 BCE); Imperial Aramaic (700-300 BCE)", "araméen d'empire (700-300 BCE)", ""],
    self["arg", "", "an", "Aragonese", "aragonais", "aragonés"],
    self["arm", "hye", "hy", "Armenian", "arménien","armenio"],
    self["arn", "", "", "Mapudungun; Mapuche", "mapudungun; mapuche; mapuce",""],
    self["arp", "", "", "Arapaho", "arapaho",""],
    self["art", "", "", "Artificial languages", "artificielles, langues",""],
    self["arw", "", "", "Arawak", "arawak",""],
    self["asm", "", "as", "Assamese", "assamais", "asamés"],
    self["ast", "", "", "Asturian; Bable; Leonese; Asturleonese", "asturien; bable; léonais; asturoléonais",""],
    self["ath", "", "", "Athapascan languages", "athapascanes, langues",""],
    self["aus", "", "", "Australian languages", "australiennes, langues",""],
    self["ava", "", "av", "Avaric", "avar", "avar"],
    self["ave", "", "ae", "Avestan", "avestique", "avéstico"],
    self["awa", "", "", "Awadhi", "awadhi",""],
    self["aym", "", "ay", "Aymara", "aymara", "aimra"],
    self["aze", "", "az", "Azerbaijani", "azéri", "azerí"],
    self["bad", "", "", "Banda languages", "banda, langues",""],
    self["bai", "", "", "Bamileke languages", "bamiléké, langues",""],
    self["bak", "", "ba", "Bashkir", "bachkir","baskir"],
    self["bal", "", "", "Baluchi", "baloutchi",""],
    self["bam", "", "bm", "Bambara", "bambara","bambara"],
    self["ban", "", "", "Balinese", "balinais",""],
    self["baq", "eus", "eu", "Basque", "basque","euskera"],
    self["bas", "", "", "Basa", "basa",""],
    self["bat", "", "", "Baltic languages", "baltes, langues",""],
    self["bej", "", "", "Beja; Bedawiyet", "bedja",""],
    self["bel", "", "be", "Belarusian", "biélorusse","bielorruso"],
    self["bem", "", "", "Bemba", "bemba",""],
    self["ben", "", "bn", "Bengali", "bengali","bengalí"],
    self["ber", "", "", "Berber languages", "berbères, langues",""],
    self["bho", "", "", "Bhojpuri", "bhojpuri",""],
    self["bih", "", "bh", "Bihari languages", "langues biharis","bhojpurí"],
    self["bik", "", "", "Bikol", "bikol",""],
    self["bin", "", "", "Bini; Edo", "bini; edo",""],
    self["bis", "", "bi", "Bislama", "bichlamar","bislama"],
    self["bla", "", "", "Siksika", "blackfoot",""],
    self["bnt", "", "", "Bantu (Other)", "bantoues, autres langues",""],
    self["bos", "", "bs", "Bosnian", "bosniaque","bosnio"],
    self["bra", "", "", "Braj", "braj",""],
    self["bre", "", "br", "Breton", "breton","bretón"],
    self["btk", "", "", "Batak languages", "batak, langues",""],
    self["bua", "", "", "Buriat", "bouriate",""],
    self["bug", "", "", "Buginese", "bugi",""],
    self["bul", "", "bg", "Bulgarian", "bulgare","búlgaro"],
    self["bur", "mya", "my", "Burmese", "birman","birmano"],
    self["byn", "", "", "Blin; Bilin", "blin; bilen",""],
    self["cad", "", "", "Caddo", "caddo",""],
    self["cai", "", "", "Central American Indian languages", "amérindiennes de L'Amérique centrale, langues",""],
    self["car", "", "", "Galibi Carib", "karib; galibi; carib",""],
    self["cat", "", "ca", "Catalan; Valencian", "catalan; valencien","catalán"],
    self["cau", "", "", "Caucasian languages", "caucasiennes, langues",""],
    self["ceb", "", "", "Cebuano", "cebuano",""],
    self["cel", "", "", "Celtic languages", "celtiques, langues; celtes, langues",""],
    self["cha", "", "ch", "Chamorro", "chamorro","chamorro"],
    self["chb", "", "", "Chibcha", "chibcha",""],
    self["che", "", "ce", "Chechen", "tchétchène","checheno"],
    self["chg", "", "", "Chagatai", "djaghataï",""],
    self["chi", "zho", "zh", "Chinese", "chinois","chino"],
    self["chk", "", "", "Chuukese", "chuuk",""],
    self["chm", "", "", "Mari", "mari",""],
    self["chn", "", "", "Chinook jargon", "chinook, jargon",""],
    self["cho", "", "", "Choctaw", "choctaw",""],
    self["chp", "", "", "Chipewyan; Dene Suline", "chipewyan",""],
    self["chr", "", "", "Cherokee", "cherokee",""],
    self["chu", "", "cu", "Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic", "slavon d'église; vieux slave; slavon liturgique; vieux bulgare",""],
    self["chv", "", "cv", "Chuvash", "tchouvache","chuvasio"],
    self["chy", "", "", "Cheyenne", "cheyenne",""],
    self["cmc", "", "", "Chamic languages", "chames, langues",""],
    self["cop", "", "", "Coptic", "copte",""],
    self["cor", "", "kw", "Cornish", "cornique","córnico"],
    self["cos", "", "co", "Corsican", "corse","corso"],
    self["cpe", "", "", "Creoles and pidgins, English based", "créoles et pidgins basés sur l'anglais",""],
    self["cpf", "", "", "Creoles and pidgins, French-based ", "créoles et pidgins basés sur le français",""],
    self["cpp", "", "", "Creoles and pidgins, Portuguese-based ", "créoles et pidgins basés sur le portugais",""],
    self["cre", "", "cr", "Cree", "cree","cree"],
    self["crh", "", "", "Crimean Tatar; Crimean Turkish", "tatar de Crimé",""],
    self["crp", "", "", "Creoles and pidgins ", "créoles et pidgins",""],
    self["csb", "", "", "Kashubian", "kachoube",""],
    self["cus", "", "", "Cushitic languages", "couchitiques, langues",""],
    self["cze", "ces", "cs", "Czech", "tchèque","checo"],
    self["dak", "", "", "Dakota", "dakota",""],
    self["dan", "", "da", "Danish", "danois","danés"],
    self["dar", "", "", "Dargwa", "dargwa",""],
    self["day", "", "", "Land Dayak languages", "dayak, langues",""],
    self["del", "", "", "Delaware", "delaware",""],
    self["den", "", "", "Slave (Athapascan)", "esclave (athapascan)",""],
    self["dgr", "", "", "Dogrib", "dogrib",""],
    self["din", "", "", "Dinka", "dinka",""],
    self["div", "", "dv", "Divehi; Dhivehi; Maldivian", "maldivien","maldivian"],
    self["doi", "", "", "Dogri", "dogri",""],
    self["dra", "", "", "Dravidian languages", "dravidiennes, langues",""],
    self["dsb", "", "", "Lower Sorbian", "bas-sorabe",""],
    self["dua", "", "", "Duala", "douala",""],
    self["dum", "", "", "Dutch, Middle (ca.1050-1350)", "néerlandais moyen (ca. 1050-1350)",""],
    self["dut", "nld", "nl", "Dutch; Flemish", "néerlandais; flamand","neerlandés"],
    self["dyu", "", "", "Dyula", "dioula",""],
    self["dzo", "", "dz", "Dzongkha", "dzongkha","dzongkha"],
    self["efi", "", "", "Efik", "efik",""],
    self["egy", "", "", "Egyptian (Ancient)", "égyptien",""],
    self["eka", "", "", "Ekajuk", "ekajuk",""],
    self["elx", "", "", "Elamite", "élamite",""],
    self["eng", "", "en", "English", "anglais","inglés"],
    self["enm", "", "", "English, Middle (1100-1500)", "anglais moyen (1100-1500)",""],
    self["epo", "", "eo", "Esperanto", "espéranto","esperanto"],
    self["est", "", "et", "Estonian", "estonien","estonio"],
    self["ewe", "", "ee", "Ewe", "éwé","ewe"],
    self["ewo", "", "", "Ewondo", "éwondo",""],
    self["fan", "", "", "Fang", "fang",""],
    self["fao", "", "fo", "Faroese", "féroïen","feroés"],
    self["fat", "", "", "Fanti", "fanti",""],
    self["fij", "", "fj", "Fijian", "fidjien","fiyiano"],
    self["fil", "", "", "Filipino; Pilipino", "filipino; pilipino","filipino"],
    self["fin", "", "fi", "Finnish", "finnois","finés"],
    self["fiu", "", "", "Finno-Ugrian languages", "finno-ougriennes, langues",""],
    self["fon", "", "", "Fon", "fon",""],
    self["fre", "fra", "fr", "French", "français","francés"],
    self["frm", "", "", "French, Middle (ca.1400-1600)", "français moyen (1400-1600)",""],
    self["fro", "", "", "French, Old (842-ca.1400)", "français ancien (842-ca.1400)",""],
    self["frr", "", "", "Northern Frisian", "frison septentrional",""],
    self["frs", "", "", "Eastern Frisian", "frison oriental",""],
    self["fry", "", "fy", "Western Frisian", "frison occidental","frisón"],
    self["ful", "", "ff", "Fulah", "peul","fula"],
    self["fur", "", "", "Friulian", "frioulan",""],
    self["gaa", "", "", "Ga", "ga",""],
    self["gay", "", "", "Gayo", "gayo",""],
    self["gba", "", "", "Gbaya", "gbaya",""],
    self["gem", "", "", "Germanic languages", "germaniques, langues",""],
    self["geo", "kat", "ka", "Georgian", "géorgien","georgiano"],
    self["ger", "deu", "de", "German", "allemand","alemán"],
    self["gez", "", "", "Geez", "guèze",""],
    self["gil", "", "", "Gilbertese", "kiribati",""],
    self["gla", "", "gd", "Gaelic; Scottish Gaelic", "gaélique; gaélique écossais","gaélique"],
    self["gle", "", "ga", "Irish", "irlandais","irlandés"],
    self["glg", "", "gl", "Galician", "galicien","gallego"],
    self["glv", "", "gv", "Manx", "manx; mannois","mannois"],
    self["gmh", "", "", "German, Middle High (ca.1050-1500)", "allemand, moyen haut (ca. 1050-1500)",""],
    self["goh", "", "", "German, Old High (ca.750-1050)", "allemand, vieux haut (ca. 750-1050)",""],
    self["gon", "", "", "Gondi", "gond",""],
    self["gor", "", "", "Gorontalo", "gorontalo",""],
    self["got", "", "", "Gothic", "gothique",""],
    self["grb", "", "", "Grebo", "grebo",""],
    self["grc", "", "", "Greek, Ancient (to 1453)", "grec ancien (jusqu'à 1453)",""],
    self["gre", "ell", "el", "Greek, Modern (1453-)", "grec moderne (après 1453)","griego"],
    self["grn", "", "gn", "Guarani", "guarani","guaraní"],
    self["gsw", "", "", "Swiss German; Alemannic; Alsatian", "suisse alémanique; alémanique; alsacien",""],
    self["guj", "", "gu", "Gujarati", "goudjrati","guyaratí"],
    self["gwi", "", "", "Gwich'in", "gwich'in",""],
    self["hai", "", "", "Haida", "haida",""],
    self["hat", "", "ht", "Haitian; Haitian Creole", "haïtien; créole haïtien","haitiano"],
    self["hau", "", "ha", "Hausa", "haoussa","hausa"],
    self["haw", "", "", "Hawaiian", "hawaïen",""],
    self["heb", "", "he", "Hebrew", "hébreu","hebreo"],
    self["her", "", "hz", "Herero", "herero","herero"],
    self["hil", "", "", "Hiligaynon", "hiligaynon",""],
    self["him", "", "", "Himachali languages; Western Pahari languages", "langues himachalis; langues paharis occidentales",""],
    self["hin", "", "hi", "Hindi", "hindi","hindi"],
    self["hit", "", "", "Hittite", "hittite",""],
    self["hmn", "", "", "Hmong", "hmong",""],
    self["hmo", "", "ho", "Hiri Motu", "hiri motu","hiri motu"],
    self["hrv", "", "hr", "Croatian", "croate","croata"],
    self["hsb", "", "", "Upper Sorbian", "haut-sorabe",""],
    self["hun", "", "hu", "Hungarian", "hongrois","húngaro"],
    self["hup", "", "", "Hupa", "hupa",""],
    self["iba", "", "", "Iban", "iban",""],
    self["ibo", "", "ig", "Igbo", "igbo","igbo"],
    self["ice", "isl", "is", "Icelandic", "islandais","islandés"],
    self["ido", "", "io", "Ido", "ido","ido"],
    self["iii", "", "ii", "Sichuan Yi; Nuosu", "yi de Sichuan","yi de Sichuan"],
    self["ijo", "", "", "Ijo languages", "ijo, langues",""],
    self["iku", "", "iu", "Inuktitut", "inuktitut","inutiut"],
    self["ile", "", "ie", "Interlingue; Occidental", "interlingue","interlingue"],
    self["ilo", "", "", "Iloko", "ilocano",""],
    self["ina", "", "ia", "Interlingua (International Auxiliary Language Association)", "interlingua (langue auxiliaire internationale)","interlingua"],
    self["inc", "", "", "Indic languages", "indo-aryennes, langues",""],
    self["ind", "", "id", "Indonesian", "indonésien","indonesio"],
    self["ine", "", "", "Indo-European languages", "indo-européennes, langues",""],
    self["inh", "", "", "Ingush", "ingouche",""],
    self["ipk", "", "ik", "Inupiaq", "inupiaq","inupiaq"],
    self["ira", "", "", "Iranian languages", "iraniennes, langues",""],
    self["iro", "", "", "Iroquoian languages", "iroquoises, langues",""],
    self["ita", "", "it", "Italian", "italien","italiano"],
    self["jav", "", "jv", "Javanese", "javanais","javanés"],
    self["jbo", "", "", "Lojban", "lojban",""],
    self["jpn", "", "ja", "Japanese", "japonais","japonés"],
    self["jpr", "", "", "Judeo-Persian", "judéo-persan",""],
    self["jrb", "", "", "Judeo-Arabic", "judéo-arabe",""],
    self["kaa", "", "", "Kara-Kalpak", "karakalpak",""],
    self["kab", "", "", "Kabyle", "kabyle",""],
    self["kac", "", "", "Kachin; Jingpho", "kachin; jingpho",""],
    self["kal", "", "kl", "Kalaallisut; Greenlandic", "groenlandais",""],
    self["kam", "", "", "Kamba", "kamba",""],
    self["kan", "", "kn", "Kannada", "kannada","canarés"],
    self["kar", "", "", "Karen languages", "karen, langues",""],
    self["kas", "", "ks", "Kashmiri", "kashmiri","cachemiro"],
    self["kau", "", "kr", "Kanuri", "kanouri","kanuri"],
    self["kaw", "", "", "Kawi", "kawi",""],
    self["kaz", "", "kk", "Kazakh", "kazakh","kazajo"],
    self["kbd", "", "", "Kabardian", "kabardien",""],
    self["kha", "", "", "Khasi", "khasi",""],
    self["khi", "", "", "Khoisan languages", "khoïsan, langues",""],
    self["khm", "", "km", "Central Khmer", "khmer central","camboyano"],
    self["kho", "", "", "Khotanese; Sakan", "khotanais; sakan",""],
    self["kik", "", "ki", "Kikuyu; Gikuyu", "kikuyu","kikuyu"],
    self["kin", "", "rw", "Kinyarwanda", "rwanda","ruandés"],
    self["kir", "", "ky", "Kirghiz; Kyrgyz", "kirghiz","kirghiz"],
    self["kmb", "", "", "Kimbundu", "kimbundu",""],
    self["kok", "", "", "Konkani", "konkani",""],
    self["kom", "", "kv", "Komi", "kom","komi"],
    self["kon", "", "kg", "Kongo", "kongo",""],
    self["kor", "", "ko", "Korean", "coréen","coreano"],
    self["kos", "", "", "Kosraean", "kosrae",""],
    self["kpe", "", "", "Kpelle", "kpellé",""],
    self["krc", "", "", "Karachay-Balkar", "karatchai balkar",""],
    self["krl", "", "", "Karelian", "carélien",""],
    self["kro", "", "", "Kru languages", "krou, langues",""],
    self["kru", "", "", "Kurukh", "kurukh",""],
    self["kua", "", "kj", "Kuanyama; Kwanyama", "kuanyama; kwanyama","kuanyama"],
    self["kum", "", "", "Kumyk", "koumyk",""],
    self["kur", "", "ku", "Kurdish", "kurde","kurdo"],
    self["kut", "", "", "Kutenai", "kutenai",""],
    self["lad", "", "", "Ladino", "judéo-espagnol",""],
    self["lah", "", "", "Lahnda", "lahnda",""],
    self["lam", "", "", "Lamba", "lamba",""],
    self["lao", "", "lo", "Lao", "lao",""],
    self["lat", "", "la", "Latin", "latin","latín"],
    self["lav", "", "lv", "Latvian", "letton",""],
    self["lez", "", "", "Lezghian", "lezghien",""],
    self["lim", "", "li", "Limburgan; Limburger; Limburgish", "limbourgeois",""],
    self["lin", "", "ln", "Lingala", "lingala",""],
    self["lit", "", "lt", "Lithuanian", "lituanien",""],
    self["lol", "", "", "Mongo", "mongo",""],
    self["loz", "", "", "Lozi", "lozi",""],
    self["ltz", "", "lb", "Luxembourgish; Letzeburgesch", "luxembourgeois",""],
    self["lua", "", "", "Luba-Lulua", "luba-lulua",""],
    self["lub", "", "lu", "Luba-Katanga", "luba-katanga",""],
    self["lug", "", "lg", "Ganda", "ganda",""],
    self["lui", "", "", "Luiseno", "luiseno",""],
    self["lun", "", "", "Lunda", "lunda",""],
    self["luo", "", "", "Luo (Kenya and Tanzania)", "luo (Kenya et Tanzanie)",""],
    self["lus", "", "", "Lushai", "lushai",""],
    self["mac", "mkd", "mk", "Macedonian", "macédonien","macedonio"],
    self["mad", "", "", "Madurese", "madourais",""],
    self["mag", "", "", "Magahi", "magahi",""],
    self["mah", "", "mh", "Marshallese", "marshall",""],
    self["mai", "", "", "Maithili", "maithili",""],
    self["mak", "", "", "Makasar", "makassar",""],
    self["mal", "", "ml", "Malayalam", "malayalam","malayalam"],
    self["man", "", "", "Mandingo", "mandingue",""],
    self["mao", "mri", "mi", "Maori", "maori","maorí"],
    self["map", "", "", "Austronesian languages", "austronésiennes, langues",""],
    self["mar", "", "mr", "Marathi", "marathe","maratí"],
    self["mas", "", "", "Masai", "massaï","malayo"],
    self["may", "msa", "ms", "Malay", "malais",""],
    self["mdf", "", "", "Moksha", "moksa",""],
    self["mdr", "", "", "Mandar", "mandar",""],
    self["men", "", "", "Mende", "mendé",""],
    self["mga", "", "", "Irish, Middle (900-1200)", "irlandais moyen (900-1200)",""],
    self["mic", "", "", "Mi'kmaq; Micmac", "mi'kmaq; micmac",""],
    self["min", "", "", "Minangkabau", "minangkabau",""],
    self["mis", "", "", "Uncoded languages", "langues non codées",""],
    self["mkh", "", "", "Mon-Khmer languages", "môn-khmer, langues",""],
    self["mlg", "", "mg", "Malagasy", "malgache",""],
    self["mlt", "", "mt", "Maltese", "maltais","maltés"],
    self["mnc", "", "", "Manchu", "mandchou",""],
    self["mni", "", "", "Manipuri", "manipuri",""],
    self["mno", "", "", "Manobo languages", "manobo, langues",""],
    self["moh", "", "", "Mohawk", "mohawk",""],
    self["mon", "", "mn", "Mongolian", "mongol","mongol"],
    self["mos", "", "", "Mossi", "moré",""],
    self["mul", "", "", "Multiple languages", "multilingue",""],
    self["mun", "", "", "Munda languages", "mounda, langues",""],
    self["mus", "", "", "Creek", "muskogee",""],
    self["mwl", "", "", "Mirandese", "mirandais",""],
    self["mwr", "", "", "Marwari", "marvari",""],
    self["myn", "", "", "Mayan languages", "maya, langues",""],
    self["myv", "", "", "Erzya", "erza",""],
    self["nah", "", "", "Nahuatl languages", "nahuatl, langues",""],
    self["nai", "", "", "North American Indian languages", "nord-amérindiennes, langues",""],
    self["nap", "", "", "Neapolitan", "napolitain",""],
    self["nau", "", "na", "Nauru", "nauruan","nauruano"],
    self["nav", "", "nv", "Navajo; Navaho", "navaho","navajo"],
    self["nbl", "", "nr", "Ndebele, South; South Ndebele", "ndébélé du Sud","ndebele del sur"],
    self["nde", "", "nd", "Ndebele, North; North Ndebele", "ndébélé du Nord","ndebele del norte"],
    self["ndo", "", "ng", "Ndonga", "ndonga","ndonga"],
    self["nds", "", "", "Low German; Low Saxon; German, Low; Saxon, Low", "bas allemand; bas saxon; allemand, bas; saxon, bas",""],
    self["nep", "", "ne", "Nepali", "népalais","nepalí"],
    self["new", "", "", "Nepal Bhasa; Newari", "nepal bhasa; newari",""],
    self["nia", "", "", "Nias", "nias",""],
    self["nic", "", "", "Niger-Kordofanian languages", "nigéro-kordofaniennes, langues",""],
    self["niu", "", "", "Niuean", "niué",""],
    self["nno", "", "nn", "Norwegian Nynorsk; Nynorsk, Norwegian", "norvégien nynorsk; nynorsk, norvégien","nynorsk"],
    self["nob", "", "nb", "Bokmål, Norwegian; Norwegian Bokmål", "norvégien bokmål","noruego bokmål"],
    self["nog", "", "", "Nogai", "nogaï; nogay",""],
    self["non", "", "", "Norse, Old", "norrois, vieux",""],
    self["nor", "", "no", "Norwegian", "norvégien","noruego"],
    self["nqo", "", "", "N'Ko", "n'ko",""],
    self["nso", "", "", "Pedi; Sepedi; Northern Sotho", "pedi; sepedi; sotho du Nord",""],
    self["nub", "", "", "Nubian languages", "nubiennes, langues",""],
    self["nwc", "", "", "Classical Newari; Old Newari; Classical Nepal Bhasa", "newari classique",""],
    self["nya", "", "ny", "Chichewa; Chewa; Nyanja", "chichewa; chewa; nyanja","nyanja"],
    self["nym", "", "", "Nyamwezi", "nyamwezi",""],
    self["nyn", "", "", "Nyankole", "nyankolé",""],
    self["nyo", "", "", "Nyoro", "nyoro",""],
    self["nzi", "", "", "Nzima", "nzema",""],
    self["oci", "", "oc", "Occitan (post 1500); Provençal", "occitan (après 1500); provençal","occitano"],
    self["oji", "", "oj", "Ojibwa", "ojibwa","ojibwa"],
    self["ori", "", "or", "Oriya", "oriya","oriya"],
    self["orm", "", "om", "Oromo", "galla","oromo"],
    self["osa", "", "", "Osage", "osage",""],
    self["oss", "", "os", "Ossetian; Ossetic", "ossète","ossète"],
    self["ota", "", "", "Turkish, Ottoman (1500-1928)", "turc ottoman (1500-1928)",""],
    self["oto", "", "", "Otomian languages", "otomi, langues",""],
    self["paa", "", "", "Papuan languages", "papoues, langues",""],
    self["pag", "", "", "Pangasinan", "pangasinan",""],
    self["pal", "", "", "Pahlavi", "pahlavi",""],
    self["pam", "", "", "Pampanga; Kapampangan", "pampangan",""],
    self["pan", "", "pa", "Panjabi; Punjabi", "pendjabi","pendjabi"],
    self["pap", "", "", "Papiamento", "papiamento",""],
    self["pau", "", "", "Palauan", "palau",""],
    self["peo", "", "", "Persian, Old (ca.600-400 B.C.)", "perse, vieux (ca. 600-400 av. J.-C.)",""],
    self["per", "fas", "fa", "Persian", "persan","persa"],
    self["phi", "", "", "Philippine languages", "philippines, langues",""],
    self["phn", "", "", "Phoenician", "phénicien",""],
    self["pli", "", "pi", "Pali", "pali","pali"],
    self["pol", "", "pl", "Polish", "polonais","polaco"],
    self["pon", "", "", "Pohnpeian", "pohnpei",""],
    self["por", "", "pt", "Portuguese", "portugais","portugués"],
    self["pra", "", "", "Prakrit languages", "prâkrit, langues",""],
    self["pro", "", "", "Provençal, Old (to 1500)", "provençal ancien (jusqu'à 1500)",""],
    self["pus", "", "ps", "Pushto; Pashto", "pachto","pachto"],
    self["qaa-qtz", "", "", "Reserved for local use", "réservée à l'usage local",""],
    self["que", "", "qu", "Quechua", "quechua","quechua"],
    self["raj", "", "", "Rajasthani", "rajasthani",""],
    self["rap", "", "", "Rapanui", "rapanui",""],
    self["rar", "", "", "Rarotongan; Cook Islands Maori", "rarotonga; maori des îles Cook",""],
    self["roa", "", "", "Romance languages", "romanes, langues",""],
    self["roh", "", "rm", "Romansh", "romanche","retorromántico"],
    self["rom", "", "", "Romany", "tsigane",""],
    self["rum", "ron", "ro", "Romanian; Moldavian; Moldovan", "roumain; moldave",""],
    self["run", "", "rn", "Rundi", "rundi","kirundi"],
    self["rup", "", "", "Aromanian; Arumanian; Macedo-Romanian", "aroumain; macédo-roumain",""],
    self["rus", "", "ru", "Russian", "russe","ruso"],
    self["sad", "", "", "Sandawe", "sandawe",""],
    self["sag", "", "sg", "Sango", "sango","sango"],
    self["sah", "", "", "Yakut", "iakoute",""],
    self["sai", "", "", "South American Indian (Other)", "indiennes d'Amérique du Sud, autres langues",""],
    self["sal", "", "", "Salishan languages", "salishennes, langues",""],
    self["sam", "", "", "Samaritan Aramaic", "samaritain",""],
    self["san", "", "sa", "Sanskrit", "sanskrit","sánscrito"],
    self["sas", "", "", "Sasak", "sasak",""],
    self["sat", "", "", "Santali", "santal",""],
    self["scn", "", "", "Sicilian", "sicilien",""],
    self["sco", "", "", "Scots", "écossais",""],
    self["sel", "", "", "Selkup", "selkoupe",""],
    self["sem", "", "", "Semitic languages", "sémitiques, langues",""],
    self["sga", "", "", "Irish, Old (to 900)", "irlandais ancien (jusqu'à 900)",""],
    self["sgn", "", "", "Sign Languages", "langues des signes",""],
    self["shn", "", "", "Shan", "chan",""],
    self["sid", "", "", "Sidamo", "sidamo",""],
    self["sin", "", "si", "Sinhala; Sinhalese", "singhalais","singhalais"],
    self["sio", "", "", "Siouan languages", "sioux, langues",""],
    self["sit", "", "", "Sino-Tibetan languages", "sino-tibétaines, langues",""],
    self["sla", "", "", "Slavic languages", "slaves, langues",""],
    self["slo", "slk", "sk", "Slovak", "slovaque","eslovaco"],
    self["slv", "", "sl", "Slovenian", "slovène","eslovenio"],
    self["sma", "", "", "Southern Sami", "sami du Sud",""],
    self["sme", "", "se", "Northern Sami", "sami du Nord","sami septentrional"],
    self["smi", "", "", "Sami languages", "sames, langues",""],
    self["smj", "", "", "Lule Sami", "sami de Lule",""],
    self["smn", "", "", "Inari Sami", "sami d'Inari",""],
    self["smo", "", "sm", "Samoan", "samoan","samoano"],
    self["sms", "", "", "Skolt Sami", "sami skolt",""],
    self["sna", "", "sn", "Shona", "shona","shona"],
    self["snd", "", "sd", "Sindhi", "sindhi","sindhi"],
    self["snk", "", "", "Soninke", "soninké",""],
    self["sog", "", "", "Sogdian", "sogdien",""],
    self["som", "", "so", "Somali", "somali","somalí"],
    self["son", "", "", "Songhai languages", "songhai, langues",""],
    self["sot", "", "st", "Sotho, Southern", "sotho du Sud","sesotho"],
    self["spa", "", "es", "Spanish; Castilian", "espagnol; castillan","español"],
    self["srd", "", "sc", "Sardinian", "sarde","sardo"],
    self["srn", "", "", "Sranan Tongo", "sranan tongo",""],
    self["srp", "", "sr", "Serbian", "serbe","serbio"],
    self["srr", "", "", "Serer", "sérère",""],
    self["ssa", "", "", "Nilo-Saharan languages", "nilo-sahariennes, langues",""],
    self["ssw", "", "ss", "Swati", "swati","suazi"],
    self["suk", "", "", "Sukuma", "sukuma",""],
    self["sun", "", "su", "Sundanese", "soundanais","sundanés"],
    self["sus", "", "", "Susu", "soussou",""],
    self["sux", "", "", "Sumerian", "sumérien",""],
    self["swa", "", "sw", "Swahili", "swahili","suajili"],
    self["swe", "", "sv", "Swedish", "suédois","sueco"],
    self["syc", "", "", "Classical Syriac", "syriaque classique",""],
    self["syr", "", "", "Syriac", "syriaque",""],
    self["tah", "", "ty", "Tahitian", "tahitien","tahitiano"],
    self["tai", "", "", "Tai languages", "tai, langues",""],
    self["tam", "", "ta", "Tamil", "tamoul","tamil"],
    self["tat", "", "tt", "Tatar", "tatar","tártaro"],
    self["tel", "", "te", "Telugu", "télougou","telugú"],
    self["tem", "", "", "Timne", "temne",""],
    self["ter", "", "", "Tereno", "tereno",""],
    self["tet", "", "", "Tetum", "tetum",""],
    self["tgk", "", "tg", "Tajik", "tadjik","tayiko"],
    self["tgl", "", "tl", "Tagalog", "tagalog","tagalo"],
    self["tha", "", "th", "Thai", "thaï","tailandés"],
    self["tib", "bod", "bo", "Tibetan", "tibétain","tibetano"],
    self["tig", "", "", "Tigre", "tigré",""],
    self["tir", "", "ti", "Tigrinya", "tigrigna","tigriña"],
    self["tiv", "", "", "Tiv", "tiv",""],
    self["tkl", "", "", "Tokelau", "tokelau",""],
    self["tlh", "", "", "Klingon; tlhIngan-Hol", "klingon",""],
    self["tli", "", "", "Tlingit", "tlingit",""],
    self["tmh", "", "", "Tamashek", "tamacheq",""],
    self["tog", "", "", "Tonga (Nyasa)", "tonga (Nyasa)",""],
    self["ton", "", "to", "Tonga (Tonga Islands)", "tongan (Îles Tonga)","tongano"],
    self["tpi", "", "", "Tok Pisin", "tok pisin",""],
    self["tsi", "", "", "Tsimshian", "tsimshian",""],
    self["tsn", "", "tn", "Tswana", "tswana","setsuana"],
    self["tso", "", "ts", "Tsonga", "tsonga","tsonga"],
    self["tuk", "", "tk", "Turkmen", "turkmène","turkomano"],
    self["tum", "", "", "Tumbuka", "tumbuka",""],
    self["tup", "", "", "Tupi languages", "tupi, langues",""],
    self["tur", "", "tr", "Turkish", "turc","turco"],
    self["tut", "", "", "Altaic languages", "altaïques, langues",""],
    self["tvl", "", "", "Tuvalu", "tuvalu",""],
    self["twi", "", "tw", "Twi", "twi","twi"],
    self["tyv", "", "", "Tuvinian", "touva",""],
    self["udm", "", "", "Udmurt", "oudmourte",""],
    self["uga", "", "", "Ugaritic", "ougaritique",""],
    self["uig", "", "ug", "Uighur; Uyghur", "ouïgour",""],
    self["ukr", "", "uk", "Ukrainian", "ukrainien","ucraniano"],
    self["umb", "", "", "Umbundu", "umbundu",""],
    self["und", "", "", "Undetermined", "indéterminée",""],
    self["urd", "", "ur", "Urdu", "ourdou","urdu"],
    self["uzb", "", "uz", "Uzbek", "ouszbek","uzbeko"],
    self["vai", "", "", "Vai", "vaï",""],
    self["ven", "", "ve", "Venda", "venda","venda"],
    self["vie", "", "vi", "Vietnamese", "vietnamien","vietnamita"],
    self["vol", "", "vo", "Volapük", "volapük",""],
    self["vot", "", "", "Votic", "vote",""],
    self["wak", "", "", "Wakashan languages", "wakashanes, langues",""],
    self["wal", "", "", "Walamo", "walamo",""],
    self["war", "", "", "Waray", "waray",""],
    self["was", "", "", "Washo", "washo",""],
    self["wel", "cym", "cy", "Welsh", "gallois","galés"],
    self["wen", "", "", "Sorbian languages", "sorabes, langues",""],
    self["wln", "", "wa", "Walloon", "wallon","valón"],
    self["wol", "", "wo", "Wolof", "wolof","wolof"],
    self["xal", "", "", "Kalmyk; Oirat", "kalmouk; oïrat",""],
    self["xho", "", "xh", "Xhosa", "xhosa","xhosa"],
    self["yao", "", "", "Yao", "yao",""],
    self["yap", "", "", "Yapese", "yapois",""],
    self["yid", "", "yi", "Yiddish", "yiddish","yídish"],
    self["yor", "", "yo", "Yoruba", "yoruba","yoruba"],
    self["ypk", "", "", "Yupik languages", "yupik, langues",""],
    self["zap", "", "", "Zapotec", "zapotèque",""],
    self["zbl", "", "", "Blissymbols; Blissymbolics; Bliss", "symboles Bliss; Bliss",""],
    self["zen", "", "", "Zenaga", "zenaga",""],
    self["zha", "", "za", "Zhuang; Chuang", "zhuang; chuang","zhuang"],
    self["znd", "", "", "Zande languages", "zandé, langues",""],
    self["zul", "", "zu", "Zulu", "zoulou","zulú"],
    self["zun", "", "", "Zuni", "zuni",""],
    self["zxx", "", "", "No linguistic content; Not applicable", "pas de contenu linguistique; non applicable",""],
    self["zza", "", "", "Zaza; Dimili; Dimli; Kirdki; Kirmanjki; Zazaki", "zaza; dimili; dimli; kirdki; kirmanjki; zazaki",""]
  ].freeze

  # An inverted index generated from the ISO_639_2 data. Used for searching
  # all words and codes in all fields.
  INVERTED_INDEX = lambda do
    index = {}
    ISO_639_2.each_with_index do |record, i|
      record.each do |field|
        downcased = field.downcase
        words = (
          downcased.split(/[[:blank:]]|\(|\)|,|;/) +
          downcased.split(/;/)
        )
        words.each do |word|
          unless word.empty?
            index[word] ||= []
            index[word] << i
          end
        end
      end
    end
    return index
  end.call.freeze

  # The ISO 639-1 dataset as an array of entries. Each entry is an array with
  # the following format:
  # * [0]: an ISO 369-2 alpha-3 (bibliographic) code
  # * [1]: an ISO 369-2 alpha-3 (terminologic) code (when given)
  # * [2]: an ISO 369-1 alpha-2 code (when given)
  # * [3]: an English name
  # * [4]: a French name
  ISO_639_1 = ISO_639_2.collect do |entry|
    entry unless entry[2].empty?
  end.compact.freeze

  class << self
    # Returns the entry array for an alpha-2 or alpha-3 code
    def find_by_code(code)
      return if code.nil?
      case code.length
      when 3
        ISO_639_2.detect do |entry|
          entry if entry.alpha3 == code || entry.alpha3_terminologic == code
        end
      when 2
        ISO_639_1.detect do |entry|
          entry if entry.alpha2 == code
        end
      end
    end
    alias_method :find, :find_by_code

    # Returns the entry array for a language specified by its English name.
    def find_by_english_name(name)
      ISO_639_2.detect do |entry|
        entry if entry.english_name == name
      end
    end

    # Returns the entry array for a language specified by its French name.
    def find_by_french_name(name)
      ISO_639_2.detect do |entry|
        entry if entry.french_name == name
      end
    end

    # Returns the entry array for a language specified by its Spanish name.
    def find_by_spanish_name(name)
      ISO_639_2.detect do |entry|
        entry if entry.spanish_name == name
      end
    end

    # Returns an array of matches for the search term. The term can be a code
    # of any kind, or it can be one of the words contained in the English or
    # French name field.
    def search(term)
      term ||= ''
      normalized_term = term.downcase.strip
      indexes         = INVERTED_INDEX[normalized_term]
      indexes ? ISO_639_2.values_at(*indexes).uniq : []
    end
  end

  # The entry's alpha-3 bibliotigraphic code.
  def alpha3_bibliographic
    self[0]
  end
  alias_method :alpha3, :alpha3_bibliographic

  # The entry's alpha-3 terminologic (when given)
  def alpha3_terminologic
    self[1]
  end

  # The entry's alpha-2 code (when given)
  def alpha2
    self[2]
  end

  # The entry's english name.
  def english_name
    self[3]
  end

  # The entry's french name.
  def french_name
    self[4]
  end
   # The entry's spanish name.
  def spanish_name
    self[5]
  end	

end
