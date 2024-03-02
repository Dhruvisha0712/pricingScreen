//
//  ViewController.swift
//  practical
//
//  Created by Nandan on 21/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var mainTtlLbl: UILabel!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var addToCartBtn: UIButton!
    @IBOutlet weak var counterStackView: UIStackView!
    @IBOutlet weak var quantityLbl: UILabel!
    
    let jsonData = """
        {
           "_id":"621da725abb8a52242c181cc",
           "name":[
              "Make your own Package"
           ],
           "price":0,
           "item_taxes":[
              5,
              12
           ],
           "specifications":[
              {
                 "_id":"621da754abb8a52242c181d8",
                 "name":[
                    "Apartment Size"
                 ],
                 "sequence_number":0,
                 "unique_id":1613,
                 "list":[
                    {
                       "_id":"621da764abb8a52242c181e5",
                       "name":[
                          "1 BHK"
                       ],
                       "price":999,
                       "sequence_number":0,
                       "is_default_selected":true,
                       "specification_group_id":"621da754abb8a52242c181d8",
                       "unique_id":6749
                    },
                    {
                       "_id":"621da770abb8a52242c181ed",
                       "name":[
                          "2 BHK"
                       ],
                       "price":1999,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da754abb8a52242c181d8",
                       "unique_id":6750
                    },
                    {
                       "_id":"621da77eabb8a52242c181f6",
                       "name":[
                          "3 BHK"
                       ],
                       "price":2999,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da754abb8a52242c181d8",
                       "unique_id":6751
                    },
                    {
                       "_id":"621da787abb8a52242c181fe",
                       "name":[
                          "4 BHK"
                       ],
                       "price":3999,
                       "sequence_number":3,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da754abb8a52242c181d8",
                       "unique_id":6752
                    },
                    {
                       "_id":"621da7b1abb8a52242c18207",
                       "name":[
                          ">4 BHK"
                       ],
                       "price":4999,
                       "sequence_number":4,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da754abb8a52242c181d8",
                       "unique_id":6753
                    }
                 ],
                 "max_range":0,
                 "range":1,
                 "type":1,
                 "is_required":true,
                 "isParentAssociate":true
              },
              {
                 "_id":"621da898abb8a52242c1830f",
                 "name":[
                    "Bedroom Cleaning "
                 ],
                 "sequence_number":0,
                 "unique_id":1617,
                 "list":[
                    {
                       "_id":"621daa58abb8a52242c1838d",
                       "name":[
                          "I don’t want any bedroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6762
                    },
                    {
                       "_id":"621daa7cabb8a52242c183a0",
                       "name":[
                          "With Mattress Dry Vacuuming  (No. of Bedrooms)"
                       ],
                       "price":149,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6763
                    },
                    {
                       "_id":"621daa8babb8a52242c183a9",
                       "name":[
                          "With Mattress Wet Shampooing  (No. of Bedrooms)"
                       ],
                       "price":249,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6764
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da764abb8a52242c181e5",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"1 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da898abb8a52242c1830f",
                 "name":[
                    "Bedroom Cleaning "
                 ],
                 "sequence_number":0,
                 "unique_id":1617,
                 "list":[
                    {
                       "_id":"621daa58abb8a52242c1838d",
                       "name":[
                          "I don’t want any bedroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6762
                    },
                    {
                       "_id":"621daa7cabb8a52242c183a0",
                       "name":[
                          "With Mattress Dry Vacuuming  (No. of Bedrooms)"
                       ],
                       "price":159,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6763
                    },
                    {
                       "_id":"621daa8babb8a52242c183a9",
                       "name":[
                          "With Mattress Wet Shampooing  (No. of Bedrooms)"
                       ],
                       "price":259,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6764
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da770abb8a52242c181ed",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"2 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da898abb8a52242c1830f",
                 "name":[
                    "Bedroom Cleaning "
                 ],
                 "sequence_number":0,
                 "unique_id":1617,
                 "list":[
                    {
                       "_id":"621daa58abb8a52242c1838d",
                       "name":[
                          "I don’t want any bedroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6762
                    },
                    {
                       "_id":"621daa7cabb8a52242c183a0",
                       "name":[
                          "With Mattress Dry Vacuuming  (No. of Bedrooms)"
                       ],
                       "price":169,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6763
                    },
                    {
                       "_id":"621daa8babb8a52242c183a9",
                       "name":[
                          "With Mattress Wet Shampooing  (No. of Bedrooms)"
                       ],
                       "price":269,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6764
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da77eabb8a52242c181f6",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"3 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da898abb8a52242c1830f",
                 "name":[
                    "Bedroom Cleaning "
                 ],
                 "sequence_number":0,
                 "unique_id":1617,
                 "list":[
                    {
                       "_id":"621daa58abb8a52242c1838d",
                       "name":[
                          "I don’t want any bedroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6762
                    },
                    {
                       "_id":"621daa7cabb8a52242c183a0",
                       "name":[
                          "With Mattress Dry Vacuuming  (No. of Bedrooms)"
                       ],
                       "price":179,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6763
                    },
                    {
                       "_id":"621daa8babb8a52242c183a9",
                       "name":[
                          "With Mattress Wet Shampooing  (No. of Bedrooms)"
                       ],
                       "price":279,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6764
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da787abb8a52242c181fe",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da898abb8a52242c1830f",
                 "name":[
                    "Bedroom Cleaning "
                 ],
                 "sequence_number":0,
                 "unique_id":1617,
                 "list":[
                    {
                       "_id":"621daa58abb8a52242c1838d",
                       "name":[
                          "I don’t want any bedroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6762
                    },
                    {
                       "_id":"621daa7cabb8a52242c183a0",
                       "name":[
                          "With Mattress Dry Vacuuming  (No. of Bedrooms)"
                       ],
                       "price":199,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6763
                    },
                    {
                       "_id":"621daa8babb8a52242c183a9",
                       "name":[
                          "With Mattress Wet Shampooing  (No. of Bedrooms)"
                       ],
                       "price":299,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da898abb8a52242c1830f",
                       "unique_id":6764
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da7b1abb8a52242c18207",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":">4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da831abb8a52242c18254",
                 "name":[
                    "Bathroom Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1614,
                 "list":[
                    {
                       "_id":"621daa19abb8a52242c18373",
                       "name":[
                          "I don’t want any bathroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6761
                    },
                    {
                       "_id":"621daa0babb8a52242c1836a",
                       "name":[
                          "No. of Bathrooms"
                       ],
                       "price":99,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6760
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da764abb8a52242c181e5",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"1 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da831abb8a52242c18254",
                 "name":[
                    "Bathroom Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1614,
                 "list":[
                    {
                       "_id":"621daa19abb8a52242c18373",
                       "name":[
                          "I don’t want any bathroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6761
                    },
                    {
                       "_id":"621daa0babb8a52242c1836a",
                       "name":[
                          "No. of Bathrooms"
                       ],
                       "price":109,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6760
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da770abb8a52242c181ed",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"2 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da831abb8a52242c18254",
                 "name":[
                    "Bathroom Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1614,
                 "list":[
                    {
                       "_id":"621daa19abb8a52242c18373",
                       "name":[
                          "I don’t want any bathroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6761
                    },
                    {
                       "_id":"621daa0babb8a52242c1836a",
                       "name":[
                          "No. of Bathrooms"
                       ],
                       "price":119,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6760
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da77eabb8a52242c181f6",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"3 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da88cabb8a52242c18308",
                 "name":[
                    "Living Room/Dining Room Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1616,
                 "list":[
                    {
                       "_id":"621daabfabb8a52242c183c8",
                       "name":[
                          "With Sofa & Carpet Wet Shampooing"
                       ],
                       "price":279,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6767
                    },
                    {
                       "_id":"621daab4abb8a52242c183c0",
                       "name":[
                          "With Sofa & Carpet Dry Vacuuming"
                       ],
                       "price":179,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6766
                    },
                    {
                       "_id":"621daaaaabb8a52242c183b8",
                       "name":[
                          "I don’t want any living room/dining room cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6765
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da764abb8a52242c181e5",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"1 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da88cabb8a52242c18308",
                 "name":[
                    "Living Room/Dining Room Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1616,
                 "list":[
                    {
                       "_id":"621daabfabb8a52242c183c8",
                       "name":[
                          "With Sofa & Carpet Wet Shampooing"
                       ],
                       "price":289,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6767
                    },
                    {
                       "_id":"621daab4abb8a52242c183c0",
                       "name":[
                          "With Sofa & Carpet Dry Vacuuming"
                       ],
                       "price":189,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6766
                    },
                    {
                       "_id":"621daaaaabb8a52242c183b8",
                       "name":[
                          "I don’t want any living room/dining room cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6765
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da770abb8a52242c181ed",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"2 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da88cabb8a52242c18308",
                 "name":[
                    "Living Room/Dining Room Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1616,
                 "list":[
                    {
                       "_id":"621daabfabb8a52242c183c8",
                       "name":[
                          "With Sofa & Carpet Wet Shampooing"
                       ],
                       "price":299,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6767
                    },
                    {
                       "_id":"621daab4abb8a52242c183c0",
                       "name":[
                          "With Sofa & Carpet Dry Vacuuming"
                       ],
                       "price":199,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6766
                    },
                    {
                       "_id":"621daaaaabb8a52242c183b8",
                       "name":[
                          "I don’t want any living room/dining room cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6765
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da77eabb8a52242c181f6",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"3 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da88cabb8a52242c18308",
                 "name":[
                    "Living Room/Dining Room Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1616,
                 "list":[
                    {
                       "_id":"621daabfabb8a52242c183c8",
                       "name":[
                          "With Sofa & Carpet Wet Shampooing"
                       ],
                       "price":309,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6767
                    },
                    {
                       "_id":"621daab4abb8a52242c183c0",
                       "name":[
                          "With Sofa & Carpet Dry Vacuuming"
                       ],
                       "price":209,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6766
                    },
                    {
                       "_id":"621daaaaabb8a52242c183b8",
                       "name":[
                          "I don’t want any living room/dining room cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6765
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da787abb8a52242c181fe",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da88cabb8a52242c18308",
                 "name":[
                    "Living Room/Dining Room Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1616,
                 "list":[
                    {
                       "_id":"621daabfabb8a52242c183c8",
                       "name":[
                          "With Sofa & Carpet Wet Shampooing"
                       ],
                       "price":319,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6767
                    },
                    {
                       "_id":"621daab4abb8a52242c183c0",
                       "name":[
                          "With Sofa & Carpet Dry Vacuuming"
                       ],
                       "price":219,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6766
                    },
                    {
                       "_id":"621daaaaabb8a52242c183b8",
                       "name":[
                          "I don’t want any living room/dining room cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da88cabb8a52242c18308",
                       "unique_id":6765
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da7b1abb8a52242c18207",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":">4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da87dabb8a52242c182dc",
                 "name":[
                    "Kitchen Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1615,
                 "list":[
                    {
                       "_id":"621da9c4abb8a52242c18342",
                       "name":[
                          "I don’t want any kitchen cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6756
                    },
                    {
                       "_id":"621da9dcabb8a52242c18353",
                       "name":[
                          "With Chimney Deep Cleaning "
                       ],
                       "price":199,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6758
                    },
                    {
                       "_id":"621da9d3abb8a52242c1834a",
                       "name":[
                          "With Chimney, Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":299,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6757
                    },
                    {
                       "_id":"621da9e4abb8a52242c1835b",
                       "name":[
                          "With Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":249,
                       "sequence_number":3,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6759
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da764abb8a52242c181e5",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"1 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da87dabb8a52242c182dc",
                 "name":[
                    "Kitchen Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1615,
                 "list":[
                    {
                       "_id":"621da9c4abb8a52242c18342",
                       "name":[
                          "I don’t want any kitchen cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6756
                    },
                    {
                       "_id":"621da9dcabb8a52242c18353",
                       "name":[
                          "With Chimney Deep Cleaning "
                       ],
                       "price":219,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6758
                    },
                    {
                       "_id":"621da9d3abb8a52242c1834a",
                       "name":[
                          "With Chimney, Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":319,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6757
                    },
                    {
                       "_id":"621da9e4abb8a52242c1835b",
                       "name":[
                          "With Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":259,
                       "sequence_number":3,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6759
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da770abb8a52242c181ed",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"2 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da87dabb8a52242c182dc",
                 "name":[
                    "Kitchen Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1615,
                 "list":[
                    {
                       "_id":"621da9c4abb8a52242c18342",
                       "name":[
                          "I don’t want any kitchen cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6756
                    },
                    {
                       "_id":"621da9dcabb8a52242c18353",
                       "name":[
                          "With Chimney Deep Cleaning "
                       ],
                       "price":239,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6758
                    },
                    {
                       "_id":"621da9d3abb8a52242c1834a",
                       "name":[
                          "With Chimney, Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":339,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6757
                    },
                    {
                       "_id":"621da9e4abb8a52242c1835b",
                       "name":[
                          "With Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":289,
                       "sequence_number":3,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6759
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da77eabb8a52242c181f6",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"3 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da87dabb8a52242c182dc",
                 "name":[
                    "Kitchen Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1615,
                 "list":[
                    {
                       "_id":"621da9c4abb8a52242c18342",
                       "name":[
                          "I don’t want any kitchen cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6756
                    },
                    {
                       "_id":"621da9dcabb8a52242c18353",
                       "name":[
                          "With Chimney Deep Cleaning "
                       ],
                       "price":259,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6758
                    },
                    {
                       "_id":"621da9d3abb8a52242c1834a",
                       "name":[
                          "With Chimney, Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":359,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6757
                    },
                    {
                       "_id":"621da9e4abb8a52242c1835b",
                       "name":[
                          "With Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":299,
                       "sequence_number":3,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6759
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da787abb8a52242c181fe",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":"4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da87dabb8a52242c182dc",
                 "name":[
                    "Kitchen Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1615,
                 "list":[
                    {
                       "_id":"621da9c4abb8a52242c18342",
                       "name":[
                          "I don’t want any kitchen cleaning"
                       ],
                       "price":0,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6756
                    },
                    {
                       "_id":"621da9dcabb8a52242c18353",
                       "name":[
                          "With Chimney Deep Cleaning "
                       ],
                       "price":279,
                       "sequence_number":2,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6758
                    },
                    {
                       "_id":"621da9d3abb8a52242c1834a",
                       "name":[
                          "With Chimney, Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":379,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6757
                    },
                    {
                       "_id":"621da9e4abb8a52242c1835b",
                       "name":[
                          "With Fridge &amp; Microwave Deep Cleaning"
                       ],
                       "price":329,
                       "sequence_number":3,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da87dabb8a52242c182dc",
                       "unique_id":6759
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da7b1abb8a52242c18207",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":">4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              },
              {
                 "_id":"621da831abb8a52242c18254",
                 "name":[
                    "Bathroom Cleaning"
                 ],
                 "sequence_number":0,
                 "unique_id":1614,
                 "list":[
                    {
                       "_id":"621daa0babb8a52242c1836a",
                       "name":[
                          "No. of Bathrooms"
                       ],
                       "price":199,
                       "sequence_number":0,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6760
                    },
                    {
                       "_id":"621daa19abb8a52242c18373",
                       "name":[
                          "I don’t want any bathroom cleaning"
                       ],
                       "price":0,
                       "sequence_number":1,
                       "is_default_selected":false,
                       
                       "specification_group_id":"621da831abb8a52242c18254",
                       "unique_id":6761
                    }
                 ],
                 "max_range":1,
                 "range":0,
                 "type":2,
                 "is_required":false,
                 "modifierId":"621da7b1abb8a52242c18207",
                 "modifierGroupId":"621da754abb8a52242c181d8",
                 "modifierGroupName":"Apartment Size",
                 "modifierName":">4 BHK",
                 "isAssociated":true,
                 "user_can_add_specification_quantity":true
              }
           ]
        }
    """.data(using: .utf8)!
    
    var specifications = [Specification]()
    var filteredSpecifications = [Specification]()
    var checkIndexes = [String: Int]()
    var total = 0
    var reload = false
    var quantity = 1
    var listQuantity:[String: Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addToCartBtn.layer.cornerRadius = 25
        counterStackView.layer.cornerRadius = 20
        counterStackView.layer.borderColor = UIColor.systemBlue.cgColor
        counterStackView.layer.borderWidth = 1
        
        getData()
        
        tblView.estimatedRowHeight = 68.0
        tblView.rowHeight = UITableView.automaticDimension
        
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "listCell")
        tblView.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "headerCell")
        tblView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 70, right: 0)
    }


    func getData() {
        do {
            let dataModel = try JSONDecoder().decode(DataModel.self, from: jsonData)
            specifications = dataModel.specifications
            mainTtlLbl.text = dataModel.name[0]
            
            let list = specifications[0].list.first(where: { $0.isDefaultSelected })
            specializationToShow(selectedListId: list?.id ?? "")
            
            total = list?.price ?? 0
            let tot = total * quantity
            addToCartBtn.setTitle("Add To Cart - ₹ \(tot)", for: .normal)
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
    
    func specializationToShow(selectedListId: String) {
        filteredSpecifications = []
        filteredSpecifications.append(specifications[0])
        
        let specs = specifications.filter({ $0.modifierID == selectedListId })
        filteredSpecifications.append(contentsOf: specs)
    }
    
    @IBAction func plusBtnPressed(_ sender: UIButton) {
        quantity += 1
        let totalWithQuantity = total * quantity
        quantityLbl.text = String(quantity)
        addToCartBtn.setTitle("Add To Cart - ₹ \(totalWithQuantity)", for: .normal)
    }
    
    @IBAction func minusBtnPrssed(_ sender: UIButton) {
        if quantity > 1 {
            quantity -= 1
            let totalWithQuantity = total * quantity
            quantityLbl.text = String(quantity)
            addToCartBtn.setTitle("Add To Cart - ₹ \(totalWithQuantity)", for: .normal)
        }
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderTableViewCell
        
        cell.configure(title: filteredSpecifications[section].isRequired ? "\(filteredSpecifications[section].name[0]) *" : filteredSpecifications[section].name[0], desc: section == 0 ? "Choose 1" : "Choose up to 1")
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            specializationToShow(selectedListId: filteredSpecifications[indexPath.section].list[indexPath.row].id)
            
            // Iterate through rows in section 0
            for (index, _) in filteredSpecifications[indexPath.section].list.enumerated() {
                // Set isDefaultSelected to false for all rows except the selected one
                filteredSpecifications[indexPath.section].list[index].isDefaultSelected = (index == indexPath.row)
            }
            
            checkIndexes = [:]
            
            total = filteredSpecifications[indexPath.section].list[indexPath.row].price
            let tot = total * quantity
            addToCartBtn.setTitle("Add To Cart - ₹ \(tot)", for: .normal)
            
        } else {
            print("radio not")
            reload = true
            
            let checkedIndexes = checkIndexes.filter({ $0.key == filteredSpecifications[indexPath.section].list[indexPath.row].id })
            let checked = checkedIndexes.contains(where: { $0.value == indexPath.row })
            
            if checked {
                checkIndexes.removeValue(forKey: filteredSpecifications[indexPath.section].list[indexPath.row].id)
                
                let price = filteredSpecifications[indexPath.section].list[indexPath.row].price * listQuantity
                total -= price
                let tot = total * quantity
                addToCartBtn.setTitle("Add To Cart - ₹ \(tot)", for: .normal)
            } else {
                print("\(checkedIndexes.count) ...... \(filteredSpecifications[indexPath.section].maxRange)")
                print("checkedIndexes \(checkedIndexes)")
                if checkedIndexes.count < filteredSpecifications[indexPath.section].maxRange {
                    checkIndexes[filteredSpecifications[indexPath.section].list[indexPath.row].id] = indexPath.row
                    total += filteredSpecifications[indexPath.section].list[indexPath.row].price
                    let tot = total * quantity
                    addToCartBtn.setTitle("Add To Cart - ₹ \(tot)", for: .normal)
                }
            }
        }
        
        tblView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return filteredSpecifications.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredSpecifications[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListTableViewCell
        
        cell.delegate = self
        
//        if let list = filteredSpecifications[indexPath.section].list.first(where: { $0.sequenceNumber == indexPath.row }) {
        
        listQuantity[filteredSpecifications[indexPath.section].list[indexPath.row].id] = 0
        
        let checkedIndexes = checkIndexes.filter({ $0.key == filteredSpecifications[indexPath.section].list[indexPath.row].id })
        let checked = checkedIndexes.contains(where: { $0.value == indexPath.row })
        
        cell.setData(sec: indexPath.section, list: filteredSpecifications[indexPath.section].list[indexPath.row], type: filteredSpecifications[indexPath.section].type, checked: checked)
        
        if reload && checked {
            cell.listCounterStackView.isHidden = !(filteredSpecifications[indexPath.section].userCanAddSpecificationQuantity ?? false)
        } else {
            cell.listCounterStackView.isHidden = true
        }
//        }
        
        return cell
    }
}

extension ViewController: ListTableViewCellDelegate {
    func updateUI(listTotWithQuantity: Int, addOrRemove: String, listId: String, quantity: Int) {
        print("total: \(total)")
        print("listTotWithQuantity: \(listTotWithQuantity)")
        print("quantity: \(quantity)")
        
        if addOrRemove == "add" {
            total += listTotWithQuantity
        } else {
            total -= listTotWithQuantity
        }
        let tot = total * quantity
        addToCartBtn.setTitle("Add To Cart - ₹ \(tot)", for: .normal)
        
        listQuantity[listId] = quantity
    }

}
