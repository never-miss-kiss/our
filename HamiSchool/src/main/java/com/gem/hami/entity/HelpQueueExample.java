package com.gem.hami.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class HelpQueueExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HelpQueueExample() {
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

        public Criteria andHelpQueueIdIsNull() {
            addCriterion("help_queue_id is null");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdIsNotNull() {
            addCriterion("help_queue_id is not null");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdEqualTo(Integer value) {
            addCriterion("help_queue_id =", value, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdNotEqualTo(Integer value) {
            addCriterion("help_queue_id <>", value, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdGreaterThan(Integer value) {
            addCriterion("help_queue_id >", value, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("help_queue_id >=", value, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdLessThan(Integer value) {
            addCriterion("help_queue_id <", value, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdLessThanOrEqualTo(Integer value) {
            addCriterion("help_queue_id <=", value, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdIn(List<Integer> values) {
            addCriterion("help_queue_id in", values, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdNotIn(List<Integer> values) {
            addCriterion("help_queue_id not in", values, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdBetween(Integer value1, Integer value2) {
            addCriterion("help_queue_id between", value1, value2, "helpQueueId");
            return (Criteria) this;
        }

        public Criteria andHelpQueueIdNotBetween(Integer value1, Integer value2) {
            addCriterion("help_queue_id not between", value1, value2, "helpQueueId");
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

        public Criteria andRemarkInfomationIsNull() {
            addCriterion("remark_infomation is null");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationIsNotNull() {
            addCriterion("remark_infomation is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationEqualTo(String value) {
            addCriterion("remark_infomation =", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationNotEqualTo(String value) {
            addCriterion("remark_infomation <>", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationGreaterThan(String value) {
            addCriterion("remark_infomation >", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationGreaterThanOrEqualTo(String value) {
            addCriterion("remark_infomation >=", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationLessThan(String value) {
            addCriterion("remark_infomation <", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationLessThanOrEqualTo(String value) {
            addCriterion("remark_infomation <=", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationLike(String value) {
            addCriterion("remark_infomation like", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationNotLike(String value) {
            addCriterion("remark_infomation not like", value, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationIn(List<String> values) {
            addCriterion("remark_infomation in", values, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationNotIn(List<String> values) {
            addCriterion("remark_infomation not in", values, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationBetween(String value1, String value2) {
            addCriterion("remark_infomation between", value1, value2, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andRemarkInfomationNotBetween(String value1, String value2) {
            addCriterion("remark_infomation not between", value1, value2, "remarkInfomation");
            return (Criteria) this;
        }

        public Criteria andQueueAddressIsNull() {
            addCriterion("queue_address is null");
            return (Criteria) this;
        }

        public Criteria andQueueAddressIsNotNull() {
            addCriterion("queue_address is not null");
            return (Criteria) this;
        }

        public Criteria andQueueAddressEqualTo(String value) {
            addCriterion("queue_address =", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressNotEqualTo(String value) {
            addCriterion("queue_address <>", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressGreaterThan(String value) {
            addCriterion("queue_address >", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressGreaterThanOrEqualTo(String value) {
            addCriterion("queue_address >=", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressLessThan(String value) {
            addCriterion("queue_address <", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressLessThanOrEqualTo(String value) {
            addCriterion("queue_address <=", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressLike(String value) {
            addCriterion("queue_address like", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressNotLike(String value) {
            addCriterion("queue_address not like", value, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressIn(List<String> values) {
            addCriterion("queue_address in", values, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressNotIn(List<String> values) {
            addCriterion("queue_address not in", values, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressBetween(String value1, String value2) {
            addCriterion("queue_address between", value1, value2, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andQueueAddressNotBetween(String value1, String value2) {
            addCriterion("queue_address not between", value1, value2, "queueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressIsNull() {
            addCriterion("remark_queue_address is null");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressIsNotNull() {
            addCriterion("remark_queue_address is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressEqualTo(String value) {
            addCriterion("remark_queue_address =", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressNotEqualTo(String value) {
            addCriterion("remark_queue_address <>", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressGreaterThan(String value) {
            addCriterion("remark_queue_address >", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressGreaterThanOrEqualTo(String value) {
            addCriterion("remark_queue_address >=", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressLessThan(String value) {
            addCriterion("remark_queue_address <", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressLessThanOrEqualTo(String value) {
            addCriterion("remark_queue_address <=", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressLike(String value) {
            addCriterion("remark_queue_address like", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressNotLike(String value) {
            addCriterion("remark_queue_address not like", value, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressIn(List<String> values) {
            addCriterion("remark_queue_address in", values, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressNotIn(List<String> values) {
            addCriterion("remark_queue_address not in", values, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressBetween(String value1, String value2) {
            addCriterion("remark_queue_address between", value1, value2, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkQueueAddressNotBetween(String value1, String value2) {
            addCriterion("remark_queue_address not between", value1, value2, "remarkQueueAddress");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andQueueTimeIsNull() {
            addCriterion("queue_time is null");
            return (Criteria) this;
        }

        public Criteria andQueueTimeIsNotNull() {
            addCriterion("queue_time is not null");
            return (Criteria) this;
        }

        public Criteria andQueueTimeEqualTo(String value) {
            addCriterion("queue_time =", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeNotEqualTo(String value) {
            addCriterion("queue_time <>", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeGreaterThan(String value) {
            addCriterion("queue_time >", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeGreaterThanOrEqualTo(String value) {
            addCriterion("queue_time >=", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeLessThan(String value) {
            addCriterion("queue_time <", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeLessThanOrEqualTo(String value) {
            addCriterion("queue_time <=", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeLike(String value) {
            addCriterion("queue_time like", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeNotLike(String value) {
            addCriterion("queue_time not like", value, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeIn(List<String> values) {
            addCriterion("queue_time in", values, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeNotIn(List<String> values) {
            addCriterion("queue_time not in", values, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeBetween(String value1, String value2) {
            addCriterion("queue_time between", value1, value2, "queueTime");
            return (Criteria) this;
        }

        public Criteria andQueueTimeNotBetween(String value1, String value2) {
            addCriterion("queue_time not between", value1, value2, "queueTime");
            return (Criteria) this;
        }

        public Criteria andDurationIsNull() {
            addCriterion("duration is null");
            return (Criteria) this;
        }

        public Criteria andDurationIsNotNull() {
            addCriterion("duration is not null");
            return (Criteria) this;
        }

        public Criteria andDurationEqualTo(String value) {
            addCriterion("duration =", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationNotEqualTo(String value) {
            addCriterion("duration <>", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationGreaterThan(String value) {
            addCriterion("duration >", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationGreaterThanOrEqualTo(String value) {
            addCriterion("duration >=", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationLessThan(String value) {
            addCriterion("duration <", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationLessThanOrEqualTo(String value) {
            addCriterion("duration <=", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationLike(String value) {
            addCriterion("duration like", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationNotLike(String value) {
            addCriterion("duration not like", value, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationIn(List<String> values) {
            addCriterion("duration in", values, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationNotIn(List<String> values) {
            addCriterion("duration not in", values, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationBetween(String value1, String value2) {
            addCriterion("duration between", value1, value2, "duration");
            return (Criteria) this;
        }

        public Criteria andDurationNotBetween(String value1, String value2) {
            addCriterion("duration not between", value1, value2, "duration");
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