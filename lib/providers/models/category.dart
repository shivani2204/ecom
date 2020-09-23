class Category {
    Category({
        this.id,
        this.parentId,
        this.name,
        this.isActive,
        this.position,
        this.level,
        this.productCount,
        this.childrenData,
    });

    int id;
    int parentId;
    String name;
    bool isActive;
    int position;
    int level;
    int productCount;
    List<ChildrenDatum> childrenData;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] == null ? null : json["id"],
        parentId: json["parent_id"] == null ? null : json["parent_id"],
        name: json["name"] == null ? null : json["name"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        position: json["position"] == null ? null : json["position"],
        level: json["level"] == null ? null : json["level"],
        productCount: json["product_count"] == null ? null : json["product_count"],
        childrenData: json["children_data"] == null ? null : List<ChildrenDatum>.from(json["children_data"].map((x) => ChildrenDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "parent_id": parentId == null ? null : parentId,
        "name": name == null ? null : name,
        "is_active": isActive == null ? null : isActive,
        "position": position == null ? null : position,
        "level": level == null ? null : level,
        "product_count": productCount == null ? null : productCount,
        "children_data": childrenData == null ? null : List<dynamic>.from(childrenData.map((x) => x.toJson())),
    };
}

class ChildrenDatum {
    ChildrenDatum({
        this.id,
        this.parentId,
        this.name,
        this.isActive,
        this.position,
        this.level,
        this.productCount,
        this.childrenData,
    });

    int id;
    int parentId;
    String name;
    bool isActive;
    int position;
    int level;
    int productCount;
    List<ChildrenDatum> childrenData;

    factory ChildrenDatum.fromJson(Map<String, dynamic> json) => ChildrenDatum(
        id: json["id"] == null ? null : json["id"],
        parentId: json["parent_id"] == null ? null : json["parent_id"],
        name: json["name"] == null ? null : json["name"],
        isActive: json["is_active"] == null ? null : json["is_active"],
        position: json["position"] == null ? null : json["position"],
        level: json["level"] == null ? null : json["level"],
        productCount: json["product_count"] == null ? null : json["product_count"],
        childrenData: json["children_data"] == null ? null : List<ChildrenDatum>.from(json["children_data"].map((x) => ChildrenDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "parent_id": parentId == null ? null : parentId,
        "name": name == null ? null : name,
        "is_active": isActive == null ? null : isActive,
        "position": position == null ? null : position,
        "level": level == null ? null : level,
        "product_count": productCount == null ? null : productCount,
        "children_data": childrenData == null ? null : List<dynamic>.from(childrenData.map((x) => x.toJson())),
    };
}
