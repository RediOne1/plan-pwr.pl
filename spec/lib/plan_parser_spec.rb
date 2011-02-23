# encoding: utf-8

require 'spec_helper'

describe Epure::Parser do
  def parse_schedule(filename)
    raw = File.read(File.join(File.dirname(__FILE__), "data", filename))
    schedule = Epure::Parser.parse!(raw)
    entries = schedule.entries
    [schedule, entries]
  end
  
  it "should parse all and give no errors" do
    (1..3).each do |i|
      schedule, entries = parse_schedule "#{i}.html"
      # schedule.valid?
      # p schedule.errors
      # p entries.map {|e| e.errors }
      schedule.should be_valid
    end
  end
  
  it "should parse 1" do
    schedule, entries = parse_schedule "1.html"
    
    schedule.year.should == "2010/2011"
    schedule.semester.should == Epure::Config::SUMMER
    
    entries.size.should == 17
    
    entries[0].course_code.should == "INEK00008L"
    entries[0].course_name.should == "Bazy danych 1"
    entries[0].course_type.should == "L"
    entries[0].group_code.should == "E03-07t"
    entries[0].lecturer.should == "Mgr inż. Dariusz Jankowski"
    entries[0].week_day.should == 0
    entries[0].week.should == 0
    entries[0].start_hour.should == 7
    entries[0].start_min.should == 30
    entries[0].end_hour.should == 9
    entries[0].end_min.should == 0
    entries[0].building.should == "C-3"
    entries[0].room.should == "03"

    entries[0].course_code.should == "INEK00008L"
    entries[0].course_name.should == "Bazy danych 1"
    entries[0].course_type.should == "L"
    entries[0].group_code.should == "E03-07t"
    entries[0].lecturer.should == "Mgr inż. Dariusz Jankowski"
    entries[0].week_day.should == 0
    entries[0].week.should == 0
    entries[0].start_hour.should == 7
    entries[0].start_min.should == 30
    entries[0].end_hour.should == 9
    entries[0].end_min.should == 0
    entries[0].building.should == "C-3"
    entries[0].room.should == "03"

    entries[1].course_code.should == "INEK00002W"
    entries[1].course_name.should == "Architektura komputerów 1"
    entries[1].course_type.should == "W"
    entries[1].group_code.should == "E03-49a"
    entries[1].lecturer.should == "Dr hab. inż. Janusz Biernat"
    entries[1].week_day.should == 0
    entries[1].week.should == 0
    entries[1].start_hour.should == 9
    entries[1].start_min.should == 15
    entries[1].end_hour.should == 11
    entries[1].end_min.should == 0
    entries[1].building.should == "C-3"
    entries[1].room.should == "23"

    entries[2].course_code.should == "INEK00009W"
    entries[2].course_name.should == "Technologie sieciowe 1"
    entries[2].course_type.should == "W"
    entries[2].group_code.should == "E03-10a"
    entries[2].lecturer.should == "Dr hab. inż. Krzysztof Walkowiak"
    entries[2].week_day.should == 0
    entries[2].week.should == 0
    entries[2].start_hour.should == 13
    entries[2].start_min.should == 15
    entries[2].end_hour.should == 15
    entries[2].end_min.should == 0
    entries[2].building.should == "C-1"
    entries[2].room.should == "205"

    entries[3].course_code.should == "INEK00003P"
    entries[3].course_name.should == "Architektura komputerów 2"
    entries[3].course_type.should == "P"
    entries[3].group_code.should == "E03-01ab"
    entries[3].lecturer.should == "Dr inż. Krzysztof Berezowski"
    entries[3].week_day.should == 0
    entries[3].week.should == 1
    entries[3].start_hour.should == 15
    entries[3].start_min.should == 15
    entries[3].end_hour.should == 16
    entries[3].end_min.should == 55
    entries[3].building.should == "C-3"
    entries[3].room.should == "220"

    entries[4].course_code.should == "MAP001151W"
    entries[4].course_name.should == "Rachunek prawdopodobieństwa"
    entries[4].course_type.should == "W"
    entries[4].group_code.should == "E00-10b"
    entries[4].lecturer.should == "Dr hab. Maciej Wilczyński"
    entries[4].week_day.should == 0
    entries[4].week.should == 2
    entries[4].start_hour.should == 11
    entries[4].start_min.should == 15
    entries[4].end_hour.should == 13
    entries[4].end_min.should == 0
    entries[4].building.should == "C-13"
    entries[4].room.should == "3.11/2.17"

    entries[5].course_code.should == "INEK00003L"
    entries[5].course_name.should == "Architektura komputerów 2"
    entries[5].course_type.should == "L"
    entries[5].group_code.should == "E03-00h"
    entries[5].lecturer.should == "Dr inż. Krzysztof Berezowski"
    entries[5].week_day.should == 0
    entries[5].week.should == 2
    entries[5].start_hour.should == 18
    entries[5].start_min.should == 0
    entries[5].end_hour.should == 20
    entries[5].end_min.should == 35
    entries[5].building.should == "C-3"
    entries[5].room.should == "013"

    entries[6].course_code.should == "INEK00003W"
    entries[6].course_name.should == "Architektura komputerów 2"
    entries[6].course_type.should == "W"
    entries[6].group_code.should == "E03-02a"
    entries[6].lecturer.should == "Dr hab. inż. Janusz Biernat"
    entries[6].week_day.should == 1
    entries[6].week.should == 0
    entries[6].start_hour.should == 9
    entries[6].start_min.should == 15
    entries[6].end_hour.should == 11
    entries[6].end_min.should == 0
    entries[6].building.should == "C-1"
    entries[6].room.should == "205"

    entries[7].course_code.should == "INEK00006C"
    entries[7].course_name.should == "Struktury danych i złożoność.."
    entries[7].course_type.should == "C"
    entries[7].group_code.should == "E03-03h"
    entries[7].lecturer.should == "Mgr inż. Karolina Mokrzysz"
    entries[7].week_day.should == 1
    entries[7].week.should == 1
    entries[7].start_hour.should == 15
    entries[7].start_min.should == 15
    entries[7].end_hour.should == 16
    entries[7].end_min.should == 55
    entries[7].building.should == "C-3"
    entries[7].room.should == "20"

    entries[8].course_code.should == "INEK00006P"
    entries[8].course_name.should == "Struktury danych i złożomość.."
    entries[8].course_type.should == "P"
    entries[8].group_code.should == "E03-04b"
    entries[8].lecturer.should == "Dr inż. Maciej Lichtenstein"
    entries[8].week_day.should == 2
    entries[8].week.should == 0
    entries[8].start_hour.should == 11
    entries[8].start_min.should == 15
    entries[8].end_hour.should == 13
    entries[8].end_min.should == 0
    entries[8].building.should == "C-3"
    entries[8].room.should == "312"

    entries[9].course_code.should == "INEK00007P"
    entries[9].course_name.should == "Niez. i diagn. ukł. cyfr. 2"
    entries[9].course_type.should == "P"
    entries[9].group_code.should == "E03-06e"
    entries[9].lecturer.should == "Dr inż. Jacek Jarnicki"
    entries[9].week_day.should == 2
    entries[9].week.should == 0
    entries[9].start_hour.should == 15
    entries[9].start_min.should == 15
    entries[9].end_hour.should == 16
    entries[9].end_min.should == 55
    entries[9].building.should == "C-3"
    entries[9].room.should == "226"

    entries[10].course_code.should == "ETEW00006L"
    entries[10].course_name.should == "Podstawy techn. mikroproc..."
    entries[10].course_type.should == "L"
    entries[10].group_code.should == "E02-88aj"
    entries[10].lecturer.should == "Dr inż. Tomasz Kapłon"
    entries[10].week_day.should == 2
    entries[10].week.should == 1
    entries[10].start_hour.should == 9
    entries[10].start_min.should == 15
    entries[10].end_hour.should == 11
    entries[10].end_min.should == 0
    entries[10].building.should == "C-3"
    entries[10].room.should == "019A"

    entries[11].course_code.should == "INEK00008W"
    entries[11].course_name.should == "Bazy danych 1"
    entries[11].course_type.should == "W"
    entries[11].group_code.should == "E03-08a"
    entries[11].lecturer.should == "Dr inż. Iwona Poniak-Koszałka"
    entries[11].week_day.should == 3
    entries[11].week.should == 0
    entries[11].start_hour.should == 13
    entries[11].start_min.should == 15
    entries[11].end_hour.should == 15
    entries[11].end_min.should == 0
    entries[11].building.should == "C-1"
    entries[11].room.should == "205"

    entries[12].course_code.should == "INEK00009WlL"
    entries[12].course_name.should == "Technologie sieciowe 1"
    entries[12].course_type.should == "L"
    entries[12].group_code.should == "E03-09h"
    entries[12].lecturer.should == "Mgr inż. Adam Smutnicki"
    entries[12].week_day.should == 3
    entries[12].week.should == 0
    entries[12].start_hour.should == 17
    entries[12].start_min.should == 5
    entries[12].end_hour.should == 18
    entries[12].end_min.should == 45
    entries[12].building.should == "C-3"
    entries[12].room.should == "126"

    entries[13].course_code.should == "INEK00006W"
    entries[13].course_name.should == "Struktury danych i złożoność.."
    entries[13].course_type.should == "W"
    entries[13].group_code.should == "E03-05b"
    entries[13].lecturer.should == "Dr inż. Maciej Lichtenstein"
    entries[13].week_day.should == 3
    entries[13].week.should == 1
    entries[13].start_hour.should == 11
    entries[13].start_min.should == 15
    entries[13].end_hour.should == 13
    entries[13].end_min.should == 0
    entries[13].building.should == "C-1"
    entries[13].room.should == "201"

    entries[14].course_code.should == "ETEW00006W"
    entries[14].course_name.should == "Podstawy techn. mikroproc...."
    entries[14].course_type.should == "W"
    entries[14].group_code.should == "E02-89b"
    entries[14].lecturer.should == "Dr inż. Jacek Mazurkiewicz"
    entries[14].week_day.should == 4
    entries[14].week.should == 0
    entries[14].start_hour.should == 9
    entries[14].start_min.should == 15
    entries[14].end_hour.should == 11
    entries[14].end_min.should == 0
    entries[14].building.should == "C-1"
    entries[14].room.should == "201"

    entries[15].course_code.should == "INEK00002C"
    entries[15].course_name.should == "Architektura komputerów 1"
    entries[15].course_type.should == "C"
    entries[15].group_code.should == "E03-48a"
    entries[15].lecturer.should == "Dr hab. inż. Janusz Biernat"
    entries[15].week_day.should == 1
    entries[15].week.should == 0
    entries[15].start_hour.should == 7
    entries[15].start_min.should == 30
    entries[15].end_hour.should == 9
    entries[15].end_min.should == 0
    entries[15].building.should == "C-3"
    entries[15].room.should == "23"

    entries[16].course_code.should == "MAP001149W"
    entries[16].course_name.should == "Analiza matematyczna 2.3 A"
    entries[16].course_type.should == "W"
    entries[16].group_code.should == "E00-09l"
    entries[16].lecturer.should == "Dr inż. Bożena Chrobot"
    entries[16].week_day.should == 1
    entries[16].week.should == 0
    entries[16].start_hour.should == 11
    entries[16].start_min.should == 15
    entries[16].end_hour.should == 13
    entries[16].end_min.should == 0
    entries[16].building.should == "C-13"
    entries[16].room.should == "0.31"
  end
  
  it "should parse 2" do
    schedule, entries = parse_schedule "2.html"
    
    entries[0].course_code.should == "GPA009264W"
    entries[0].course_name.should == "Planowanie przestrzenne"
    entries[0].course_type.should == "W"
    entries[0].group_code.should == "S00-98a"
    entries[0].lecturer.should == "Dr Elżbieta Litwińska"
    entries[0].week_day.should == 6
    entries[0].week.should == 0
    entries[0].start_hour.should == 11
    entries[0].start_min.should == 30
    entries[0].end_hour.should == 13
    entries[0].end_min.should == 0
    entries[0].building.should == "D-2"
    entries[0].room.should == "301"

    entries[1].course_code.should == "ISS404039P"
    entries[1].course_name.should == "Wentylacja i Klimatyzacja 2"
    entries[1].course_type.should == "P"
    entries[1].group_code.should == "S01-10b"
    entries[1].lecturer.should == "Dr inż. Agnieszka Zając"
    entries[1].week_day.should == 5
    entries[1].week.should == 0
    entries[1].start_hour.should == 8
    entries[1].start_min.should == 0
    entries[1].end_hour.should == 9
    entries[1].end_min.should == 30
    entries[1].building.should == "C-6"
    entries[1].room.should == "325"

    entries[2].course_code.should == "ISS404049P"
    entries[2].course_name.should == "Instalacje sanitarne 1"
    entries[2].course_type.should == "P"
    entries[2].group_code.should == "S01-13b"
    entries[2].lecturer.should == "Dr inż. Iwona Polarczyk"
    entries[2].week_day.should == 5
    entries[2].week.should == 0
    entries[2].start_hour.should == 9
    entries[2].start_min.should == 45
    entries[2].end_hour.should == 11
    entries[2].end_min.should == 15
    entries[2].building.should == "C-6"
    entries[2].room.should == "325"

    entries[3].course_code.should == "ISS404049W"
    entries[3].course_name.should == "Instalacje sanitarne 1"
    entries[3].course_type.should == "W"
    entries[3].group_code.should == "S01-14a"
    entries[3].lecturer.should == "Dr hab. inż. Paweł Malinowski"
    entries[3].week_day.should == 5
    entries[3].week.should == 0
    entries[3].start_hour.should == 12
    entries[3].start_min.should == 0
    entries[3].end_hour.should == 13
    entries[3].end_min.should == 30
    entries[3].building.should == "D-2"
    entries[3].room.should == "301"

    entries[4].course_code.should == "ISS404004W"
    entries[4].course_name.should == "Niez. i bezp. sys. inż."
    entries[4].course_type.should == "W"
    entries[4].group_code.should == "S00-99b"
    entries[4].lecturer.should == "Dr hab. inż. Halina Hotloś"
    entries[4].week_day.should == 5
    entries[4].week.should == 0
    entries[4].start_hour.should == 13
    entries[4].start_min.should == 45
    entries[4].end_hour.should == 15
    entries[4].end_min.should == 15
    entries[4].building.should == "D-2"
    entries[4].room.should == "301"

    entries[5].course_code.should == "ISS404049L"
    entries[5].course_name.should == "Instalacje sanitarne 1"
    entries[5].course_type.should == "L"
    entries[5].group_code.should == "S01-12c"
    entries[5].lecturer.should == "Dr inż. Michał Fijewski"
    entries[5].week_day.should == 5
    entries[5].week.should == 0
    entries[5].start_hour.should == 8
    entries[5].start_min.should == 0
    entries[5].end_hour.should == 9
    entries[5].end_min.should == 30
    entries[5].building.should == "C-6"
    entries[5].room.should == "26"

    entries[6].course_code.should == "ISS404006W"
    entries[6].course_name.should == "Zarządzanie środowiskiem"
    entries[6].course_type.should == "W"
    entries[6].group_code.should == "S01-00b"
    entries[6].lecturer.should == "W07 W07"
    entries[6].week_day.should == 6
    entries[6].week.should == 0
    entries[6].start_hour.should == 8
    entries[6].start_min.should == 0
    entries[6].end_hour.should == 9
    entries[6].end_min.should == 30
    entries[6].building.should == "D-2"
    entries[6].room.should == "301"

    entries[7].course_code.should == "ISS404011W"
    entries[7].course_name.should == "Chemia środowiska 2"
    entries[7].course_type.should == "W"
    entries[7].group_code.should == "S01-01b"
    entries[7].lecturer.should == "W07 W07"
    entries[7].week_day.should == 6
    entries[7].week.should == 0
    entries[7].start_hour.should == 11
    entries[7].start_min.should == 30
    entries[7].end_hour.should == 13
    entries[7].end_min.should == 0
    entries[7].building.should == "D-2"
    entries[7].room.should == "301"

    entries[8].course_code.should == "ISS404039W"
    entries[8].course_name.should == "Wentylacja i Klimatyzacja 2"
    entries[8].course_type.should == "W"
    entries[8].group_code.should == "S01-11a"
    entries[8].lecturer.should == "Prof. dr hab. inż. Sergey Anisimov"
    entries[8].week_day.should == 6
    entries[8].week.should == 0
    entries[8].start_hour.should == 9
    entries[8].start_min.should == 45
    entries[8].end_hour.should == 11
    entries[8].end_min.should == 15
    entries[8].building.should == "C-6"
    entries[8].room.should == "58"

    entries[9].course_code.should == "JZL001002C"
    entries[9].course_name.should == "Język niemiecki A1- NZ"
    entries[9].course_type.should == "C"
    entries[9].group_code.should == "S01-07e"
    entries[9].lecturer.should == "Dr Anna Kapuściarek"
    entries[9].week_day.should == 6
    entries[9].week.should == 0
    entries[9].start_hour.should == 13
    entries[9].start_min.should == 30
    entries[9].end_hour.should == 16
    entries[9].end_min.should == 10
    entries[9].building.should == "H-4"
    entries[9].room.should == "412"
  end
end

#     entries.each.with_index do |e, i|
# puts <<-EOS
# entries[#{i}].course_code.should == "#{e.course_code}"
# entries[#{i}].course_name.should == "#{e.course_name}"
# entries[#{i}].course_type.should == "#{e.course_type}"
# entries[#{i}].group_code.should == "#{e.group_code}"
# entries[#{i}].lecturer.should == "#{e.lecturer}"
# entries[#{i}].week_day.should == #{e.week_day}
# entries[#{i}].week.should == #{e.week}
# entries[#{i}].start_hour.should == #{e.start_hour}
# entries[#{i}].start_min.should == #{e.start_min}
# entries[#{i}].end_hour.should == #{e.end_hour}
# entries[#{i}].end_min.should == #{e.end_min}
# entries[#{i}].building.should == "#{e.building}"
# entries[#{i}].room.should == "#{e.room}"
# 
# EOS
#     end
