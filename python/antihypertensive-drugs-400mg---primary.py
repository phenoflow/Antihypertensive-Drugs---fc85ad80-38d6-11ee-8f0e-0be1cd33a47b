# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"1295","system":"gprdproduct"},{"code":"14761","system":"gprdproduct"},{"code":"14943","system":"gprdproduct"},{"code":"16206","system":"gprdproduct"},{"code":"20538","system":"gprdproduct"},{"code":"27690","system":"gprdproduct"},{"code":"27696","system":"gprdproduct"},{"code":"32896","system":"gprdproduct"},{"code":"34006","system":"gprdproduct"},{"code":"34374","system":"gprdproduct"},{"code":"34557","system":"gprdproduct"},{"code":"40240","system":"gprdproduct"},{"code":"40668","system":"gprdproduct"},{"code":"42488","system":"gprdproduct"},{"code":"45250","system":"gprdproduct"},{"code":"46699","system":"gprdproduct"},{"code":"47673","system":"gprdproduct"},{"code":"52777","system":"gprdproduct"},{"code":"55228","system":"gprdproduct"},{"code":"55416","system":"gprdproduct"},{"code":"55949","system":"gprdproduct"},{"code":"56375","system":"gprdproduct"},{"code":"56764","system":"gprdproduct"},{"code":"57342","system":"gprdproduct"},{"code":"575","system":"gprdproduct"},{"code":"57933","system":"gprdproduct"},{"code":"58491","system":"gprdproduct"},{"code":"58669","system":"gprdproduct"},{"code":"59415","system":"gprdproduct"},{"code":"59911","system":"gprdproduct"},{"code":"6","system":"gprdproduct"},{"code":"60291","system":"gprdproduct"},{"code":"60565","system":"gprdproduct"},{"code":"61365","system":"gprdproduct"},{"code":"6351","system":"gprdproduct"},{"code":"64677","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-400mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-400mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-400mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
