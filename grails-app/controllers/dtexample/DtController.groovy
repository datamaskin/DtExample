package dtexample

import grails.converters.JSON

class DtController {

    def index() {
        def resultMap = [:]
        if (params.draw) {
            resultMap.draw = params.draw as int
        }
        resultMap.recordsTotal = 5
        resultMap.recordsFiltered = 5
        resultMap.data = [
                ["Thom", "Buehler", "thom.beuhler@nowhere.com"],
                ["Lola", "Cowper", "lola.cowper@nowhere.com"],
                ["Kara", "Dugger", "kara.dugger@nowhere.com"],
                ["Kyla", "Hallauer", "kyla.hallauer@nowhere.com"],
                ["Herb", "Hawker", "herb.hawker@nowhere.com"]
        ]
        respond resultMap as JSON
    }
}
