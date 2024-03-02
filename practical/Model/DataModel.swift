//
//  DataModel.swift
//  practical
//
//  Created by Nandan on 21/02/24.
//

import Foundation

// MARK: - DataModel
struct DataModel: Codable {
    let id: String
    let name: [String]
    let price: Int
    let itemTaxes: [Int]
    let specifications: [Specification]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, price
        case itemTaxes = "item_taxes"
        case specifications
    }
}

// MARK: - Specification
struct Specification: Codable {
    let id: ID
    let name: [String]
    let sequenceNumber, uniqueID: Int
    var list: [List]
    let maxRange, range, type: Int
    let isRequired: Bool
    let isParentAssociate: Bool?
    let modifierID: String?
    let modifierGroupID: ID?
    let modifierGroupName: ModifierGroupName?
    let modifierName: String?
    let isAssociated, userCanAddSpecificationQuantity: Bool?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case sequenceNumber = "sequence_number"
        case uniqueID = "unique_id"
        case list
        case maxRange = "max_range"
        case range, type
        case isRequired = "is_required"
        case isParentAssociate
        case modifierID = "modifierId"
        case modifierGroupID = "modifierGroupId"
        case modifierGroupName, modifierName, isAssociated
        case userCanAddSpecificationQuantity = "user_can_add_specification_quantity"
    }
}

enum ID: String, Codable {
    case the621Da754Abb8A52242C181D8 = "621da754abb8a52242c181d8"
    case the621Da831Abb8A52242C18254 = "621da831abb8a52242c18254"
    case the621Da87Dabb8A52242C182Dc = "621da87dabb8a52242c182dc"
    case the621Da88Cabb8A52242C18308 = "621da88cabb8a52242c18308"
    case the621Da898Abb8A52242C1830F = "621da898abb8a52242c1830f"
}

// MARK: - List
struct List: Codable {
    let id: String
    let name: [String]
    let price, sequenceNumber: Int
    var isDefaultSelected: Bool
    let specificationGroupID: ID
    let uniqueID: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, price
        case sequenceNumber = "sequence_number"
        case isDefaultSelected = "is_default_selected"
        case specificationGroupID = "specification_group_id"
        case uniqueID = "unique_id"
    }
}

enum ModifierGroupName: String, Codable {
    case apartmentSize = "Apartment Size"
}
