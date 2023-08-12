# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"15221","system":"gprdproduct"},{"code":"18379","system":"gprdproduct"},{"code":"21145","system":"gprdproduct"},{"code":"21773","system":"gprdproduct"},{"code":"25572","system":"gprdproduct"},{"code":"25717","system":"gprdproduct"},{"code":"25777","system":"gprdproduct"},{"code":"26460","system":"gprdproduct"},{"code":"30557","system":"gprdproduct"},{"code":"32114","system":"gprdproduct"},{"code":"32658","system":"gprdproduct"},{"code":"32836","system":"gprdproduct"},{"code":"33079","system":"gprdproduct"},{"code":"33094","system":"gprdproduct"},{"code":"33415","system":"gprdproduct"},{"code":"33527","system":"gprdproduct"},{"code":"33602","system":"gprdproduct"},{"code":"33646","system":"gprdproduct"},{"code":"33650","system":"gprdproduct"},{"code":"33977","system":"gprdproduct"},{"code":"34187","system":"gprdproduct"},{"code":"34429","system":"gprdproduct"},{"code":"34449","system":"gprdproduct"},{"code":"34471","system":"gprdproduct"},{"code":"34492","system":"gprdproduct"},{"code":"34509","system":"gprdproduct"},{"code":"34551","system":"gprdproduct"},{"code":"34553","system":"gprdproduct"},{"code":"34567","system":"gprdproduct"},{"code":"34601","system":"gprdproduct"},{"code":"34651","system":"gprdproduct"},{"code":"34719","system":"gprdproduct"},{"code":"34821","system":"gprdproduct"},{"code":"34934","system":"gprdproduct"},{"code":"34952","system":"gprdproduct"},{"code":"37725","system":"gprdproduct"},{"code":"41827","system":"gprdproduct"},{"code":"41861","system":"gprdproduct"},{"code":"42795","system":"gprdproduct"},{"code":"43251","system":"gprdproduct"},{"code":"43507","system":"gprdproduct"},{"code":"43523","system":"gprdproduct"},{"code":"45265","system":"gprdproduct"},{"code":"46974","system":"gprdproduct"},{"code":"47041","system":"gprdproduct"},{"code":"47331","system":"gprdproduct"},{"code":"48049","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-felogen---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-felogen---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-felogen---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
