### FChoice.Foundation.Filters Namespace

#### Classes

|   | Class | Description |
| --- | --- | --- |
| ![Class](dotnetimages/Class.png) | [AfterFilter](fcSDK~FChoice.Foundation.Filters.AfterFilter.md) | Filter field on dates coming after the input to this filter |
| ![Class](dotnetimages/Class.png) | [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md) | Logical filter allowing 2 AND (inclusive) filters. |
| ![Class](dotnetimages/Class.png) | [AndManyFilter](fcSDK~FChoice.Foundation.Filters.AndManyFilter.md) | Alternative filter to [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md) which allows for more than two sub filters. |
| ![Class](dotnetimages/Class.png) | [BeforeFilter](fcSDK~FChoice.Foundation.Filters.BeforeFilter.md) | Filter field on dates coming before the input to this filter |
| ![Class](dotnetimages/Class.png) | [BetweenFilter](fcSDK~FChoice.Foundation.Filters.BetweenFilter.md) | Filter field for values that occur between the two filter inputs |
| ![Class](dotnetimages/Class.png) | [ColumnBasedFilter](fcSDK~FChoice.Foundation.Filters.ColumnBasedFilter.md) | Abstract filter type that maps to a column. |
| ![Class](dotnetimages/Class.png) | [ContainsFilter](fcSDK~FChoice.Foundation.Filters.ContainsFilter.md) | Filter field on strings that contain the input to this filter |
| ![Class](dotnetimages/Class.png) | [EndsWithFilter](fcSDK~FChoice.Foundation.Filters.EndsWithFilter.md) | Filter on strings that end with the input to this filter |
| ![Class](dotnetimages/Class.png) | [EqualsFilter](fcSDK~FChoice.Foundation.Filters.EqualsFilter.md) | Filter field on data that equals the input to this filter |
| ![Class](dotnetimages/Class.png) | [Filter](fcSDK~FChoice.Foundation.Filters.Filter.md) | Abstract base of all filters. |
| ![Class](dotnetimages/Class.png) | [FilterCollection](fcSDK~FChoice.Foundation.Filters.FilterCollection.md) | 
Holds one or more filters. This collection is used by filters that allow children such as [OrFilter](fcSDK~FChoice.Foundation.Filters.OrFilter.md) and [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md)

 |
| ![Class](dotnetimages/Class.png) | [FilterExpression](fcSDK~FChoice.Foundation.Filters.FilterExpression.md) | Filter expressions offer on non static alternative to [FilterType](fcSDK~FChoice.Foundation.Filters.FilterType.md) for construction of Filter objects. |
| ![Class](dotnetimages/Class.png) | [FilterType](fcSDK~FChoice.Foundation.Filters.FilterType.md) | This is a helper factory for creation of Filter objects. |
| ![Class](dotnetimages/Class.png) | [IsInFilter](fcSDK~FChoice.Foundation.Filters.IsInFilter.md) | Filter on fields that are in the input array |
| ![Class](dotnetimages/Class.png) | [IsNullFilter](fcSDK~FChoice.Foundation.Filters.IsNullFilter.md) | Filter on fields that are null |
| ![Class](dotnetimages/Class.png) | [LessThanFilter](fcSDK~FChoice.Foundation.Filters.LessThanFilter.md) | Filter field that are less than filter input |
| ![Class](dotnetimages/Class.png) | [LessThanOrEqualFilter](fcSDK~FChoice.Foundation.Filters.LessThanOrEqualFilter.md) | Filter field that are less than or equal to the filter input |
| ![Class](dotnetimages/Class.png) | [LikeFilter](fcSDK~FChoice.Foundation.Filters.LikeFilter.md) | Filter field on strings that are like the filter input |
| ![Class](dotnetimages/Class.png) | [LogicalFilter](fcSDK~FChoice.Foundation.Filters.LogicalFilter.md) | Abstract filter for logical filter types. |
| ![Class](dotnetimages/Class.png) | [MoreThanFilter](fcSDK~FChoice.Foundation.Filters.MoreThanFilter.md) | Filter field that are more than the filter input |
| ![Class](dotnetimages/Class.png) | [MoreThanOrEqualFilter](fcSDK~FChoice.Foundation.Filters.MoreThanOrEqualFilter.md) | Filter field that are more than or equal to the filter input |
| ![Class](dotnetimages/Class.png) | [NotContainsFilter](fcSDK~FChoice.Foundation.Filters.NotContainsFilter.md) | Filter field on strings that do not contain the input to this filter |
| ![Class](dotnetimages/Class.png) | [NotEndsWithFilter](fcSDK~FChoice.Foundation.Filters.NotEndsWithFilter.md) | Filter field on strings that do end with the input to this filter |
| ![Class](dotnetimages/Class.png) | [NotLikeFilter](fcSDK~FChoice.Foundation.Filters.NotLikeFilter.md) | Filter field on strings that are not like the filter input |
| ![Class](dotnetimages/Class.png) | [NotStartsWithFilter](fcSDK~FChoice.Foundation.Filters.NotStartsWithFilter.md) | Filter field on strings that do start with the input to this filter |
| ![Class](dotnetimages/Class.png) | [OlderThanDaysFilter](fcSDK~FChoice.Foundation.Filters.OlderThanDaysFilter.md) | Filter field on dates that are older than a number of days |
| ![Class](dotnetimages/Class.png) | [OlderThanHoursFilter](fcSDK~FChoice.Foundation.Filters.OlderThanHoursFilter.md) | Filter field on dates that are older than a number of hours |
| ![Class](dotnetimages/Class.png) | [OnFilter](fcSDK~FChoice.Foundation.Filters.OnFilter.md) | Filter field on dates occuring on the the input to this filter |
| ![Class](dotnetimages/Class.png) | [OperationFilter](fcSDK~FChoice.Foundation.Filters.OperationFilter.md) | Abstract filter for operation type filters. |
| ![Class](dotnetimages/Class.png) | [OrFilter](fcSDK~FChoice.Foundation.Filters.OrFilter.md) | Logical filter allowing 2 OR (exclusive) filters. |
| ![Class](dotnetimages/Class.png) | [OrManyFilter](fcSDK~FChoice.Foundation.Filters.OrManyFilter.md) | Alternative filter to [OrFilter](fcSDK~FChoice.Foundation.Filters.OrFilter.md) which allows for more than two sub filters. |
| ![Class](dotnetimages/Class.png) | [SoundsLikeFilter](fcSDK~FChoice.Foundation.Filters.SoundsLikeFilter.md) | Filter field on strings sound like the input to this filter |
| ![Class](dotnetimages/Class.png) | [StartsWithFilter](fcSDK~FChoice.Foundation.Filters.StartsWithFilter.md) | Filter field on strings that do not contain the input to this filter |
| ![Class](dotnetimages/Class.png) | [TodayFilter](fcSDK~FChoice.Foundation.Filters.TodayFilter.md) | Filter field on today's date |
| ![Class](dotnetimages/Class.png) | [TomorrowFilter](fcSDK~FChoice.Foundation.Filters.TomorrowFilter.md) | Filter field on tomorrow's date |
| ![Class](dotnetimages/Class.png) | [WithinDaysFilter](fcSDK~FChoice.Foundation.Filters.WithinDaysFilter.md) | Filter field on dates that have occurred within a number of days |
| ![Class](dotnetimages/Class.png) | [WithinHoursFilter](fcSDK~FChoice.Foundation.Filters.WithinHoursFilter.md) | Filter field on dates that have occurred within a number of hours |
| ![Class](dotnetimages/Class.png) | [YesterdayFilter](fcSDK~FChoice.Foundation.Filters.YesterdayFilter.md) | Filter |



#### Reference

[fcSDK Assembly](fcSDK.md)