import struct Foundation.Decimal

public protocol MySQLDataConvertible {
    init?(mysqlData: MySQLData)
    var mysqlData: MySQLData? { get }
}

extension Date: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let date = mysqlData.date else {
            return nil
        }
        self = date
    }
    
    public var mysqlData: MySQLData? {
        return .init(date: self)
    }
}

extension FixedWidthInteger {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.int else {
            return nil
        }
        self = numericCast(int)
    }

    public var mysqlData: MySQLData? {
        return .init(int: numericCast(self))
    }
}

extension Int: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.int else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(int: self)
    }
}
extension Int8: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.int8 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(int8: self)
    }
}
extension Int16: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.int16 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(int16: self)
    }
}
extension Int32: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.int32 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(int32: self)
    }
}
extension Int64: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.int64 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(int64: self)
    }
}
extension UInt: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.uint else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(uint: self)
    }
}
extension UInt8: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.uint8 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(uint8: self)
    }
}
extension UInt16: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.uint16 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(uint16: self)
    }
}
extension UInt32: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.uint32 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(uint32: self)
    }
}
extension UInt64: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let int = mysqlData.uint64 else {
            return nil
        }
        self = int
    }

    public var mysqlData: MySQLData? {
        return .init(uint64: self)
    }
}

extension String: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let string = mysqlData.string else {
            return nil
        }
        self = string
    }

    public var mysqlData: MySQLData? {
        return .init(string: self)
    }
}

extension Bool: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let bool = mysqlData.bool else {
            return nil
        }
        self = bool
    }

    public var mysqlData: MySQLData? {
        return .init(bool: self)
    }
}

extension UUID: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let uuid = mysqlData.uuid else {
            return nil
        }
        self = uuid
    }

    public var mysqlData: MySQLData? {
        return .init(uuid: self)
    }
}


extension Double: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let double = mysqlData.double else {
            return nil
        }
        self = double
    }

    public var mysqlData: MySQLData? {
        return .init(double: self)
    }
}

extension Float: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let float = mysqlData.float else {
            return nil
        }
        self = float
    }

    public var mysqlData: MySQLData? {
        return .init(float: self)
    }
}

extension Decimal: MySQLDataConvertible {
    public init?(mysqlData: MySQLData) {
        guard let decimal = mysqlData.decimal else {
            return nil
        }
        self = decimal
    }

    public var mysqlData: MySQLData? {
        .init(decimal: self)
    }
}
