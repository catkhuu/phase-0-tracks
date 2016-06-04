highway = {
  vehicle_1: {
    model_name: 'Toyota Prius',
    model_info: {
      model_year: 2009,
      total_seats: 5,
      color: 'silver',
      efficiency: {
        highway: '30 mpg',
        city: '60 mpg',
      }
    },
    passengers: [
      "Al Gore", "Boutros Boutros-Ghali", "Angela Merkel"]
  },
  vehicle_2: {
    model_name: 'Hummer H3',
    model_info: {
      model_year: 2010,
      total_seats: 4,
      color: 'hot pink',
      efficiency: {
        highway: '18 mpg',
        city: '14 mpg',
      }
    },
    passengers: ["Arnold Schwartzenager", "Bernie Sanders", "Donald Trump", "Kanye West"]
  },
  vehicle_3: {
    model_name: 'Fiat 500',
    model_info: {
      model_year: 2016,
      total_seats: 5,
      color: 'green',
      efficiency: {
        highway: '40 mpg',
        city: '31 mpg',
      }
    },
    passengers: ["The Pope", "", "Swiss Guard 1", "Swiss Guard 2"]
  }
}

highway[:vehicle_2][:passengers][2]
highway[:vehicle_2][:passengers].reverse
highway[:vehicle_1][:passengers].push("Hillary Rodham Clinton")
highway[:vehicle_3][:passengers].last
highway[:vehicle_3][:passengers].first
highway[:vehicle_1].sort_by {|key, value| key}
highway[:vehicle_2][:model_info].sort_by {|key, value| value}
highway[:vehicle_3][:model_info].keys.sort.reverse