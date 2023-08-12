# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"12411","system":"gprdproduct"},{"code":"1455","system":"gprdproduct"},{"code":"15605","system":"gprdproduct"},{"code":"1776","system":"gprdproduct"},{"code":"25047","system":"gprdproduct"},{"code":"26237","system":"gprdproduct"},{"code":"4111","system":"gprdproduct"},{"code":"41651","system":"gprdproduct"},{"code":"41652","system":"gprdproduct"},{"code":"4334","system":"gprdproduct"},{"code":"43547","system":"gprdproduct"},{"code":"445","system":"gprdproduct"},{"code":"50607","system":"gprdproduct"},{"code":"51665","system":"gprdproduct"},{"code":"52055","system":"gprdproduct"},{"code":"52159","system":"gprdproduct"},{"code":"53084","system":"gprdproduct"},{"code":"53964","system":"gprdproduct"},{"code":"54497","system":"gprdproduct"},{"code":"5727","system":"gprdproduct"},{"code":"58517","system":"gprdproduct"},{"code":"6008","system":"gprdproduct"},{"code":"60757","system":"gprdproduct"},{"code":"6160","system":"gprdproduct"},{"code":"62553","system":"gprdproduct"},{"code":"65124","system":"gprdproduct"},{"code":"65389","system":"gprdproduct"},{"code":"7056","system":"gprdproduct"},{"code":"7419","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-250microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-250microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-250microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
