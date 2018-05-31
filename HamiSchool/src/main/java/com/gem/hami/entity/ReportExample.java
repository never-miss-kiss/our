package com.gem.hami.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReportExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReportExample() {
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

        public Criteria andReportIdIsNull() {
            addCriterion("report_id is null");
            return (Criteria) this;
        }

        public Criteria andReportIdIsNotNull() {
            addCriterion("report_id is not null");
            return (Criteria) this;
        }

        public Criteria andReportIdEqualTo(Integer value) {
            addCriterion("report_id =", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdNotEqualTo(Integer value) {
            addCriterion("report_id <>", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdGreaterThan(Integer value) {
            addCriterion("report_id >", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("report_id >=", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdLessThan(Integer value) {
            addCriterion("report_id <", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdLessThanOrEqualTo(Integer value) {
            addCriterion("report_id <=", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdIn(List<Integer> values) {
            addCriterion("report_id in", values, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdNotIn(List<Integer> values) {
            addCriterion("report_id not in", values, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdBetween(Integer value1, Integer value2) {
            addCriterion("report_id between", value1, value2, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdNotBetween(Integer value1, Integer value2) {
            addCriterion("report_id not between", value1, value2, "reportId");
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

        public Criteria andReasonCategoryIdIsNull() {
            addCriterion("reason_category_id is null");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdIsNotNull() {
            addCriterion("reason_category_id is not null");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdEqualTo(Integer value) {
            addCriterion("reason_category_id =", value, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdNotEqualTo(Integer value) {
            addCriterion("reason_category_id <>", value, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdGreaterThan(Integer value) {
            addCriterion("reason_category_id >", value, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("reason_category_id >=", value, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdLessThan(Integer value) {
            addCriterion("reason_category_id <", value, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("reason_category_id <=", value, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdIn(List<Integer> values) {
            addCriterion("reason_category_id in", values, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdNotIn(List<Integer> values) {
            addCriterion("reason_category_id not in", values, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdBetween(Integer value1, Integer value2) {
            addCriterion("reason_category_id between", value1, value2, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonCategoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("reason_category_id not between", value1, value2, "reasonCategoryId");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkIsNull() {
            addCriterion("reason_remark is null");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkIsNotNull() {
            addCriterion("reason_remark is not null");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkEqualTo(String value) {
            addCriterion("reason_remark =", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkNotEqualTo(String value) {
            addCriterion("reason_remark <>", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkGreaterThan(String value) {
            addCriterion("reason_remark >", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("reason_remark >=", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkLessThan(String value) {
            addCriterion("reason_remark <", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkLessThanOrEqualTo(String value) {
            addCriterion("reason_remark <=", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkLike(String value) {
            addCriterion("reason_remark like", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkNotLike(String value) {
            addCriterion("reason_remark not like", value, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkIn(List<String> values) {
            addCriterion("reason_remark in", values, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkNotIn(List<String> values) {
            addCriterion("reason_remark not in", values, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkBetween(String value1, String value2) {
            addCriterion("reason_remark between", value1, value2, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReasonRemarkNotBetween(String value1, String value2) {
            addCriterion("reason_remark not between", value1, value2, "reasonRemark");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdIsNull() {
            addCriterion("reported_user_id is null");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdIsNotNull() {
            addCriterion("reported_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdEqualTo(Integer value) {
            addCriterion("reported_user_id =", value, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdNotEqualTo(Integer value) {
            addCriterion("reported_user_id <>", value, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdGreaterThan(Integer value) {
            addCriterion("reported_user_id >", value, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("reported_user_id >=", value, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdLessThan(Integer value) {
            addCriterion("reported_user_id <", value, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("reported_user_id <=", value, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdIn(List<Integer> values) {
            addCriterion("reported_user_id in", values, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdNotIn(List<Integer> values) {
            addCriterion("reported_user_id not in", values, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdBetween(Integer value1, Integer value2) {
            addCriterion("reported_user_id between", value1, value2, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andReportedUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("reported_user_id not between", value1, value2, "reportedUserId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdIsNull() {
            addCriterion("source_category_id is null");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdIsNotNull() {
            addCriterion("source_category_id is not null");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdEqualTo(Integer value) {
            addCriterion("source_category_id =", value, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdNotEqualTo(Integer value) {
            addCriterion("source_category_id <>", value, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdGreaterThan(Integer value) {
            addCriterion("source_category_id >", value, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("source_category_id >=", value, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdLessThan(Integer value) {
            addCriterion("source_category_id <", value, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("source_category_id <=", value, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdIn(List<Integer> values) {
            addCriterion("source_category_id in", values, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdNotIn(List<Integer> values) {
            addCriterion("source_category_id not in", values, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdBetween(Integer value1, Integer value2) {
            addCriterion("source_category_id between", value1, value2, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceCategoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("source_category_id not between", value1, value2, "sourceCategoryId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdIsNull() {
            addCriterion("source_item_id is null");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdIsNotNull() {
            addCriterion("source_item_id is not null");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdEqualTo(Integer value) {
            addCriterion("source_item_id =", value, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdNotEqualTo(Integer value) {
            addCriterion("source_item_id <>", value, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdGreaterThan(Integer value) {
            addCriterion("source_item_id >", value, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("source_item_id >=", value, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdLessThan(Integer value) {
            addCriterion("source_item_id <", value, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdLessThanOrEqualTo(Integer value) {
            addCriterion("source_item_id <=", value, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdIn(List<Integer> values) {
            addCriterion("source_item_id in", values, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdNotIn(List<Integer> values) {
            addCriterion("source_item_id not in", values, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdBetween(Integer value1, Integer value2) {
            addCriterion("source_item_id between", value1, value2, "sourceItemId");
            return (Criteria) this;
        }

        public Criteria andSourceItemIdNotBetween(Integer value1, Integer value2) {
            addCriterion("source_item_id not between", value1, value2, "sourceItemId");
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