//
//  JTCalendarProtocols.swift
//  Pods
//
//  Created by Jeron Thomas on 2016-06-07.
//
//

protocol JTAppleCalendarLayoutProtocol: class {
    var sectionInset: UIEdgeInsets {get set}
    var itemSize: CGSize {get set}
    var pointForFocusItem: CGPoint {get set}
    var headerReferenceSize: CGSize {get set}
    var footerReferenceSize: CGSize {get set}
    var scrollDirection: UICollectionViewScrollDirection {get set}
    var minimumInteritemSpacing: CGFloat {get set}
    var minimumLineSpacing: CGFloat {get set}
    
    var cellCache: [Int:[UICollectionViewLayoutAttributes]] {get set}
    var headerCache: [UICollectionViewLayoutAttributes] {get set}
    
    func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint) -> CGPoint
    func clearCache()
}

protocol JTAppleCalendarDelegateProtocol: class {
    func numberOfRows() -> Int
    func numberOfColumns() -> Int
    func numberOfsectionsPermonth() -> Int
    func numberOfMonthsInCalendar() -> Int
    func numberOfDaysPerSection() -> Int
    
    func referenceSizeForHeaderInSection(section: Int) -> CGSize
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
}