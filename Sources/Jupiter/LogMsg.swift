/// A Logger message.
public class LogMsg: CustomStringConvertible {
    /// The message.
    public let msg: String
    /// Metadata for message.
    public let meta: Any?

    public var description: String {
        guard let meta = meta else {
            if msg.isEmpty {
                return ""
            }
            return "- \(msg)"
        }
        if msg.isEmpty {
            return "[\(String(describing: meta))]"
        }
        return "[\(String(describing: meta))] - \(msg)"
    }

    /// Create a new Logging message.
    public init() {
        msg = ""
        meta = nil
    }

    public init(_ msg: String) {
        self.msg = msg
        self.meta = nil
    }
}
