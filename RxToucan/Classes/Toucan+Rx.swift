import Toucan
import RxSwift

extension ObservableType where Self.E == UIImage {
  public func toToucan() -> Observable<Toucan> {
    return map({ Toucan(image: $0) })
  }
}

extension ObservableType where Self.E == Toucan {
  public func toImage() -> Observable<UIImage> {
    return map({ $0.image })
  }
}

extension ObservableType where Self.E == Toucan {
  public func resize(_ size: CGSize, fitMode: Toucan.Resize.FitMode = .clip) -> Observable<Toucan> {
    return map({ $0.resize(size, fitMode: fitMode) })
  }

  public func resizeByClipping(_ size: CGSize) -> Observable<Toucan> {
    return map({ $0.resizeByClipping(size) })
  }
  
  public func resizeByCropping(_ size: CGSize) -> Observable<Toucan> {
    return map({ $0.resizeByCropping(size) })
  }
  
  public func resizeByScaling(_ size: CGSize) -> Observable<Toucan> {
    return map({ $0.resizeByScaling(size) })
  }

  public func maskWithImage(maskImage : UIImage) -> Observable<Toucan> {
    return map({ $0.maskWithImage(maskImage: maskImage) })
  }
  
  public func maskWithEllipse(borderWidth: CGFloat = 0, borderColor: UIColor = UIColor.white) -> Observable<Toucan> {
    return map({ $0.maskWithEllipse(borderWidth: borderWidth, borderColor: borderColor) })
  }
  
  public func maskWithPath(path: UIBezierPath) -> Observable<Toucan> {
    return map({ $0.maskWithPath(path: path) })
  }
  
  public func maskWithPathClosure(path: @escaping (_ rect: CGRect) -> (UIBezierPath)) -> Observable<Toucan> {
    return map({ $0.maskWithPathClosure(path: path) })
  }
  
  public func maskWithRoundedRect(cornerRadius: CGFloat, borderWidth: CGFloat = 0, borderColor: UIColor = UIColor.white) -> Observable<Toucan> {
    return map({ $0.maskWithRoundedRect(cornerRadius: cornerRadius, borderWidth: borderWidth, borderColor: borderColor) })
  }
  
  public func layerWithOverlayImage(_ overlayImage: UIImage, overlayFrame: CGRect) -> Observable<Toucan> {
    return map({ $0.layerWithOverlayImage(overlayImage, overlayFrame: overlayFrame) })
  }
}
