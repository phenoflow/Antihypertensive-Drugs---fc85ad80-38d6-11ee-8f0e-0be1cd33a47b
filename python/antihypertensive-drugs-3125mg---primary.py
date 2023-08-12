# Alison K Wright, Evangelos Kontopantelis, Richard Emsley, Iain Buchan, Naveed Sattar, Martin K Rutter, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"1121","system":"gprdproduct"},{"code":"11448","system":"gprdproduct"},{"code":"11469","system":"gprdproduct"},{"code":"11864","system":"gprdproduct"},{"code":"14058","system":"gprdproduct"},{"code":"147","system":"gprdproduct"},{"code":"14870","system":"gprdproduct"},{"code":"15031","system":"gprdproduct"},{"code":"16060","system":"gprdproduct"},{"code":"16161","system":"gprdproduct"},{"code":"24268","system":"gprdproduct"},{"code":"24484","system":"gprdproduct"},{"code":"2629","system":"gprdproduct"},{"code":"29427","system":"gprdproduct"},{"code":"32857","system":"gprdproduct"},{"code":"33374","system":"gprdproduct"},{"code":"34501","system":"gprdproduct"},{"code":"34544","system":"gprdproduct"},{"code":"34698","system":"gprdproduct"},{"code":"34741","system":"gprdproduct"},{"code":"35302","system":"gprdproduct"},{"code":"37650","system":"gprdproduct"},{"code":"37710","system":"gprdproduct"},{"code":"38367","system":"gprdproduct"},{"code":"39944","system":"gprdproduct"},{"code":"41633","system":"gprdproduct"},{"code":"43322","system":"gprdproduct"},{"code":"45264","system":"gprdproduct"},{"code":"46715","system":"gprdproduct"},{"code":"46935","system":"gprdproduct"},{"code":"46936","system":"gprdproduct"},{"code":"46951","system":"gprdproduct"},{"code":"46957","system":"gprdproduct"},{"code":"47536","system":"gprdproduct"},{"code":"47616","system":"gprdproduct"},{"code":"48039","system":"gprdproduct"},{"code":"48098","system":"gprdproduct"},{"code":"49142","system":"gprdproduct"},{"code":"50403","system":"gprdproduct"},{"code":"51447","system":"gprdproduct"},{"code":"51528","system":"gprdproduct"},{"code":"52399","system":"gprdproduct"},{"code":"52886","system":"gprdproduct"},{"code":"53885","system":"gprdproduct"},{"code":"54479","system":"gprdproduct"},{"code":"55299","system":"gprdproduct"},{"code":"56148","system":"gprdproduct"},{"code":"56704","system":"gprdproduct"},{"code":"57073","system":"gprdproduct"},{"code":"57235","system":"gprdproduct"},{"code":"57626","system":"gprdproduct"},{"code":"57658","system":"gprdproduct"},{"code":"58109","system":"gprdproduct"},{"code":"58195","system":"gprdproduct"},{"code":"58511","system":"gprdproduct"},{"code":"58751","system":"gprdproduct"},{"code":"58967","system":"gprdproduct"},{"code":"59340","system":"gprdproduct"},{"code":"59495","system":"gprdproduct"},{"code":"599","system":"gprdproduct"},{"code":"60761","system":"gprdproduct"},{"code":"61663","system":"gprdproduct"},{"code":"61985","system":"gprdproduct"},{"code":"62039","system":"gprdproduct"},{"code":"62337","system":"gprdproduct"},{"code":"62361","system":"gprdproduct"},{"code":"62388","system":"gprdproduct"},{"code":"62516","system":"gprdproduct"},{"code":"6261","system":"gprdproduct"},{"code":"63422","system":"gprdproduct"},{"code":"64888","system":"gprdproduct"},{"code":"65227","system":"gprdproduct"},{"code":"65443","system":"gprdproduct"},{"code":"65805","system":"gprdproduct"},{"code":"65822","system":"gprdproduct"},{"code":"66114","system":"gprdproduct"},{"code":"6786","system":"gprdproduct"},{"code":"6794","system":"gprdproduct"},{"code":"7066","system":"gprdproduct"},{"code":"761","system":"gprdproduct"},{"code":"817","system":"gprdproduct"},{"code":"9646","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antihypertensive-drugs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antihypertensive-drugs-3125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antihypertensive-drugs-3125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antihypertensive-drugs-3125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
