package com.gem.hami.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class HelpBuyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HelpBuyExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andHelpBuyIdIsNull() {
            addCriterion("help_buy_id is null");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdIsNotNull() {
            addCriterion("help_buy_id is not null");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdEqualTo(Integer value) {
            addCriterion("help_buy_id =", value, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdNotEqualTo(Integer value) {
            addCriterion("help_buy_id <>", value, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdGreaterThan(Integer value) {
            addCriterion("help_buy_id >", value, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("help_buy_id >=", value, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdLessThan(Integer value) {
            addCriterion("help_buy_id <", value, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdLessThanOrEqualTo(Integer value) {
            addCriterion("help_buy_id <=", value, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdIn(List<Integer> values) {
            addCriterion("help_buy_id in", values, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdNotIn(List<Integer> values) {
            addCriterion("help_buy_id not in", values, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdBetween(Integer value1, Integer value2) {
            addCriterion("help_buy_id between", value1, value2, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andHelpBuyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("help_buy_id not between", value1, value2, "helpBuyId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressIsNull() {
            addCriterion("receipt_address is null");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressIsNotNull() {
            addCriterion("receipt_address is not null");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressEqualTo(String value) {
            addCriterion("receipt_address =", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotEqualTo(String value) {
            addCriterion("receipt_address <>", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressGreaterThan(String value) {
            addCriterion("receipt_address >", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressGreaterThanOrEqualTo(String value) {
            addCriterion("receipt_address >=", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressLessThan(String value) {
            addCriterion("receipt_address <", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressLessThanOrEqualTo(String value) {
            addCriterion("receipt_address <=", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressLike(String value) {
            addCriterion("receipt_address like", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotLike(String value) {
            addCriterion("receipt_address not like", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressIn(List<String> values) {
            addCriterion("receipt_address in", values, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotIn(List<String> values) {
            addCriterion("receipt_address not in", values, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressBetween(String value1, String value2) {
            addCriterion("receipt_address between", value1, value2, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotBetween(String value1, String value2) {
            addCriterion("receipt_address not between", value1, value2, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeIsNull() {
            addCriterion("receipt_address_alternative is null");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeIsNotNull() {
            addCriterion("receipt_address_alternative is not null");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeEqualTo(String value) {
            addCriterion("receipt_address_alternative =", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeNotEqualTo(String value) {
            addCriterion("receipt_address_alternative <>", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeGreaterThan(String value) {
            addCriterion("receipt_address_alternative >", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeGreaterThanOrEqualTo(String value) {
            addCriterion("receipt_address_alternative >=", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeLessThan(String value) {
            addCriterion("receipt_address_alternative <", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeLessThanOrEqualTo(String value) {
            addCriterion("receipt_address_alternative <=", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeLike(String value) {
            addCriterion("receipt_address_alternative like", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeNotLike(String value) {
            addCriterion("receipt_address_alternative not like", value, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeIn(List<String> values) {
            addCriterion("receipt_address_alternative in", values, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeNotIn(List<String> values) {
            addCriterion("receipt_address_alternative not in", values, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeBetween(String value1, String value2) {
            addCriterion("receipt_address_alternative between", value1, value2, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressAlternativeNotBetween(String value1, String value2) {
            addCriterion("receipt_address_alternative not between", value1, value2, "receiptAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressIsNull() {
            addCriterion("buy_address is null");
            return (Criteria) this;
        }

        public Criteria andBuyAddressIsNotNull() {
            addCriterion("buy_address is not null");
            return (Criteria) this;
        }

        public Criteria andBuyAddressEqualTo(String value) {
            addCriterion("buy_address =", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressNotEqualTo(String value) {
            addCriterion("buy_address <>", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressGreaterThan(String value) {
            addCriterion("buy_address >", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressGreaterThanOrEqualTo(String value) {
            addCriterion("buy_address >=", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressLessThan(String value) {
            addCriterion("buy_address <", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressLessThanOrEqualTo(String value) {
            addCriterion("buy_address <=", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressLike(String value) {
            addCriterion("buy_address like", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressNotLike(String value) {
            addCriterion("buy_address not like", value, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressIn(List<String> values) {
            addCriterion("buy_address in", values, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressNotIn(List<String> values) {
            addCriterion("buy_address not in", values, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressBetween(String value1, String value2) {
            addCriterion("buy_address between", value1, value2, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressNotBetween(String value1, String value2) {
            addCriterion("buy_address not between", value1, value2, "buyAddress");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeIsNull() {
            addCriterion("buy_address_alternative is null");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeIsNotNull() {
            addCriterion("buy_address_alternative is not null");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeEqualTo(String value) {
            addCriterion("buy_address_alternative =", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeNotEqualTo(String value) {
            addCriterion("buy_address_alternative <>", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeGreaterThan(String value) {
            addCriterion("buy_address_alternative >", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeGreaterThanOrEqualTo(String value) {
            addCriterion("buy_address_alternative >=", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeLessThan(String value) {
            addCriterion("buy_address_alternative <", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeLessThanOrEqualTo(String value) {
            addCriterion("buy_address_alternative <=", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeLike(String value) {
            addCriterion("buy_address_alternative like", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeNotLike(String value) {
            addCriterion("buy_address_alternative not like", value, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeIn(List<String> values) {
            addCriterion("buy_address_alternative in", values, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeNotIn(List<String> values) {
            addCriterion("buy_address_alternative not in", values, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeBetween(String value1, String value2) {
            addCriterion("buy_address_alternative between", value1, value2, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyAddressAlternativeNotBetween(String value1, String value2) {
            addCriterion("buy_address_alternative not between", value1, value2, "buyAddressAlternative");
            return (Criteria) this;
        }

        public Criteria andBuyDemandIsNull() {
            addCriterion("buy_demand is null");
            return (Criteria) this;
        }

        public Criteria andBuyDemandIsNotNull() {
            addCriterion("buy_demand is not null");
            return (Criteria) this;
        }

        public Criteria andBuyDemandEqualTo(String value) {
            addCriterion("buy_demand =", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandNotEqualTo(String value) {
            addCriterion("buy_demand <>", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandGreaterThan(String value) {
            addCriterion("buy_demand >", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandGreaterThanOrEqualTo(String value) {
            addCriterion("buy_demand >=", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandLessThan(String value) {
            addCriterion("buy_demand <", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandLessThanOrEqualTo(String value) {
            addCriterion("buy_demand <=", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandLike(String value) {
            addCriterion("buy_demand like", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandNotLike(String value) {
            addCriterion("buy_demand not like", value, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandIn(List<String> values) {
            addCriterion("buy_demand in", values, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandNotIn(List<String> values) {
            addCriterion("buy_demand not in", values, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandBetween(String value1, String value2) {
            addCriterion("buy_demand between", value1, value2, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andBuyDemandNotBetween(String value1, String value2) {
            addCriterion("buy_demand not between", value1, value2, "buyDemand");
            return (Criteria) this;
        }

        public Criteria andDistanceIsNull() {
            addCriterion("distance is null");
            return (Criteria) this;
        }

        public Criteria andDistanceIsNotNull() {
            addCriterion("distance is not null");
            return (Criteria) this;
        }

        public Criteria andDistanceEqualTo(Float value) {
            addCriterion("distance =", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceNotEqualTo(Float value) {
            addCriterion("distance <>", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceGreaterThan(Float value) {
            addCriterion("distance >", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceGreaterThanOrEqualTo(Float value) {
            addCriterion("distance >=", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceLessThan(Float value) {
            addCriterion("distance <", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceLessThanOrEqualTo(Float value) {
            addCriterion("distance <=", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceIn(List<Float> values) {
            addCriterion("distance in", values, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceNotIn(List<Float> values) {
            addCriterion("distance not in", values, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceBetween(Float value1, Float value2) {
            addCriterion("distance between", value1, value2, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceNotBetween(Float value1, Float value2) {
            addCriterion("distance not between", value1, value2, "distance");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceIsNull() {
            addCriterion("recommended_price is null");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceIsNotNull() {
            addCriterion("recommended_price is not null");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceEqualTo(Float value) {
            addCriterion("recommended_price =", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceNotEqualTo(Float value) {
            addCriterion("recommended_price <>", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceGreaterThan(Float value) {
            addCriterion("recommended_price >", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("recommended_price >=", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceLessThan(Float value) {
            addCriterion("recommended_price <", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceLessThanOrEqualTo(Float value) {
            addCriterion("recommended_price <=", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceIn(List<Float> values) {
            addCriterion("recommended_price in", values, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceNotIn(List<Float> values) {
            addCriterion("recommended_price not in", values, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceBetween(Float value1, Float value2) {
            addCriterion("recommended_price between", value1, value2, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceNotBetween(Float value1, Float value2) {
            addCriterion("recommended_price not between", value1, value2, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceIsNull() {
            addCriterion("person_price is null");
            return (Criteria) this;
        }

        public Criteria andPersonPriceIsNotNull() {
            addCriterion("person_price is not null");
            return (Criteria) this;
        }

        public Criteria andPersonPriceEqualTo(Float value) {
            addCriterion("person_price =", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceNotEqualTo(Float value) {
            addCriterion("person_price <>", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceGreaterThan(Float value) {
            addCriterion("person_price >", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("person_price >=", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceLessThan(Float value) {
            addCriterion("person_price <", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceLessThanOrEqualTo(Float value) {
            addCriterion("person_price <=", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceIn(List<Float> values) {
            addCriterion("person_price in", values, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceNotIn(List<Float> values) {
            addCriterion("person_price not in", values, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceBetween(Float value1, Float value2) {
            addCriterion("person_price between", value1, value2, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceNotBetween(Float value1, Float value2) {
            addCriterion("person_price not between", value1, value2, "personPrice");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}