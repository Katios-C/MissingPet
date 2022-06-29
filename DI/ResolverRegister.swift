import Foundation
import Resolver

extension Resolver: ResolverRegistering {
  public static func registerAllServices() {
      register {LoginRegistration()}
  }
}