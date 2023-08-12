# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"11793","system":"gprdproduct"},{"code":"12678","system":"gprdproduct"},{"code":"13394","system":"gprdproduct"},{"code":"14502","system":"gprdproduct"},{"code":"17082","system":"gprdproduct"},{"code":"19149","system":"gprdproduct"},{"code":"21706","system":"gprdproduct"},{"code":"26895","system":"gprdproduct"},{"code":"2774","system":"gprdproduct"},{"code":"32634","system":"gprdproduct"},{"code":"33403","system":"gprdproduct"},{"code":"34153","system":"gprdproduct"},{"code":"34337","system":"gprdproduct"},{"code":"34818","system":"gprdproduct"},{"code":"35710","system":"gprdproduct"},{"code":"39646","system":"gprdproduct"},{"code":"4059","system":"gprdproduct"},{"code":"42152","system":"gprdproduct"},{"code":"43427","system":"gprdproduct"},{"code":"44000","system":"gprdproduct"},{"code":"45765","system":"gprdproduct"},{"code":"4667","system":"gprdproduct"},{"code":"47107","system":"gprdproduct"},{"code":"47536","system":"gprdproduct"},{"code":"49142","system":"gprdproduct"},{"code":"51447","system":"gprdproduct"},{"code":"51492","system":"gprdproduct"},{"code":"51643","system":"gprdproduct"},{"code":"52611","system":"gprdproduct"},{"code":"52686","system":"gprdproduct"},{"code":"54106","system":"gprdproduct"},{"code":"55297","system":"gprdproduct"},{"code":"55979","system":"gprdproduct"},{"code":"56445","system":"gprdproduct"},{"code":"57240","system":"gprdproduct"},{"code":"57626","system":"gprdproduct"},{"code":"58109","system":"gprdproduct"},{"code":"59549","system":"gprdproduct"},{"code":"6066","system":"gprdproduct"},{"code":"61115","system":"gprdproduct"},{"code":"61573","system":"gprdproduct"},{"code":"7553","system":"gprdproduct"},{"code":"7712","system":"gprdproduct"},{"code":"822","system":"gprdproduct"},{"code":"9162","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('beta-blockers-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["beta-blockers-025ml---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["beta-blockers-025ml---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["beta-blockers-025ml---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
