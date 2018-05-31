package com.gem.hami.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class HelpSendExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HelpSendExample() {
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

        public Criteria andHelpSendIdIsNull() {
            addCriterion("help_send_id is null");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdIsNotNull() {
            addCriterion("help_send_id is not null");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdEqualTo(Integer value) {
            addCriterion("help_send_id =", value, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdNotEqualTo(Integer value) {
            addCriterion("help_send_id <>", value, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdGreaterThan(Integer value) {
            addCriterion("help_send_id >", value, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("help_send_id >=", value, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdLessThan(Integer value) {
            addCriterion("help_send_id <", value, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdLessThanOrEqualTo(Integer value) {
            addCriterion("help_send_id <=", value, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdIn(List<Integer> values) {
            addCriterion("help_send_id in", values, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdNotIn(List<Integer> values) {
            addCriterion("help_send_id not in", values, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdBetween(Integer value1, Integer value2) {
            addCriterion("help_send_id between", value1, value2, "helpSendId");
            return (Criteria) this;
        }

        public Criteria andHelpSendIdNotBetween(Integer value1, Integer value2) {
            addCriterion("help_send_id not between", value1, value2, "helpSendId");
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

        public Criteria andSendAddressIsNull() {
            addCriterion("send_address is null");
            return (Criteria) this;
        }

        public Criteria andSendAddressIsNotNull() {
            addCriterion("send_address is not null");
            return (Criteria) this;
        }

        public Criteria andSendAddressEqualTo(String value) {
            addCriterion("send_address =", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressNotEqualTo(String value) {
            addCriterion("send_address <>", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressGreaterThan(String value) {
            addCriterion("send_address >", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressGreaterThanOrEqualTo(String value) {
            addCriterion("send_address >=", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressLessThan(String value) {
            addCriterion("send_address <", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressLessThanOrEqualTo(String value) {
            addCriterion("send_address <=", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressLike(String value) {
            addCriterion("send_address like", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressNotLike(String value) {
            addCriterion("send_address not like", value, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressIn(List<String> values) {
            addCriterion("send_address in", values, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressNotIn(List<String> values) {
            addCriterion("send_address not in", values, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressBetween(String value1, String value2) {
            addCriterion("send_address between", value1, value2, "sendAddress");
            return (Criteria) this;
        }

        public Criteria andSendAddressNotBetween(String value1, String value2) {
            addCriterion("send_address not between", value1, value2, "sendAddress");
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

        public Criteria andSendInformationIsNull() {
            addCriterion("send_information is null");
            return (Criteria) this;
        }

        public Criteria andSendInformationIsNotNull() {
            addCriterion("send_information is not null");
            return (Criteria) this;
        }

        public Criteria andSendInformationEqualTo(String value) {
            addCriterion("send_information =", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationNotEqualTo(String value) {
            addCriterion("send_information <>", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationGreaterThan(String value) {
            addCriterion("send_information >", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationGreaterThanOrEqualTo(String value) {
            addCriterion("send_information >=", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationLessThan(String value) {
            addCriterion("send_information <", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationLessThanOrEqualTo(String value) {
            addCriterion("send_information <=", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationLike(String value) {
            addCriterion("send_information like", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationNotLike(String value) {
            addCriterion("send_information not like", value, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationIn(List<String> values) {
            addCriterion("send_information in", values, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationNotIn(List<String> values) {
            addCriterion("send_information not in", values, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationBetween(String value1, String value2) {
            addCriterion("send_information between", value1, value2, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendInformationNotBetween(String value1, String value2) {
            addCriterion("send_information not between", value1, value2, "sendInformation");
            return (Criteria) this;
        }

        public Criteria andSendTimeIsNull() {
            addCriterion("send_time is null");
            return (Criteria) this;
        }

        public Criteria andSendTimeIsNotNull() {
            addCriterion("send_time is not null");
            return (Criteria) this;
        }

        public Criteria andSendTimeEqualTo(Date value) {
            addCriterion("send_time =", value, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeNotEqualTo(Date value) {
            addCriterion("send_time <>", value, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeGreaterThan(Date value) {
            addCriterion("send_time >", value, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("send_time >=", value, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeLessThan(Date value) {
            addCriterion("send_time <", value, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeLessThanOrEqualTo(Date value) {
            addCriterion("send_time <=", value, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeIn(List<Date> values) {
            addCriterion("send_time in", values, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeNotIn(List<Date> values) {
            addCriterion("send_time not in", values, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeBetween(Date value1, Date value2) {
            addCriterion("send_time between", value1, value2, "sendTime");
            return (Criteria) this;
        }

        public Criteria andSendTimeNotBetween(Date value1, Date value2) {
            addCriterion("send_time not between", value1, value2, "sendTime");
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

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
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