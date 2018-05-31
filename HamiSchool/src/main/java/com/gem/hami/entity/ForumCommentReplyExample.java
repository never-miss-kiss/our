package com.gem.hami.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ForumCommentReplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ForumCommentReplyExample() {
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

        public Criteria andForumCommentReplyIdIsNull() {
            addCriterion("forum_comment_reply_id is null");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdIsNotNull() {
            addCriterion("forum_comment_reply_id is not null");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdEqualTo(Integer value) {
            addCriterion("forum_comment_reply_id =", value, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdNotEqualTo(Integer value) {
            addCriterion("forum_comment_reply_id <>", value, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdGreaterThan(Integer value) {
            addCriterion("forum_comment_reply_id >", value, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("forum_comment_reply_id >=", value, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdLessThan(Integer value) {
            addCriterion("forum_comment_reply_id <", value, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdLessThanOrEqualTo(Integer value) {
            addCriterion("forum_comment_reply_id <=", value, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdIn(List<Integer> values) {
            addCriterion("forum_comment_reply_id in", values, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdNotIn(List<Integer> values) {
            addCriterion("forum_comment_reply_id not in", values, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdBetween(Integer value1, Integer value2) {
            addCriterion("forum_comment_reply_id between", value1, value2, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andForumCommentReplyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("forum_comment_reply_id not between", value1, value2, "forumCommentReplyId");
            return (Criteria) this;
        }

        public Criteria andContentIsNull() {
            addCriterion("content is null");
            return (Criteria) this;
        }

        public Criteria andContentIsNotNull() {
            addCriterion("content is not null");
            return (Criteria) this;
        }

        public Criteria andContentEqualTo(String value) {
            addCriterion("content =", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotEqualTo(String value) {
            addCriterion("content <>", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThan(String value) {
            addCriterion("content >", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentGreaterThanOrEqualTo(String value) {
            addCriterion("content >=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThan(String value) {
            addCriterion("content <", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLessThanOrEqualTo(String value) {
            addCriterion("content <=", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentLike(String value) {
            addCriterion("content like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotLike(String value) {
            addCriterion("content not like", value, "content");
            return (Criteria) this;
        }

        public Criteria andContentIn(List<String> values) {
            addCriterion("content in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotIn(List<String> values) {
            addCriterion("content not in", values, "content");
            return (Criteria) this;
        }

        public Criteria andContentBetween(String value1, String value2) {
            addCriterion("content between", value1, value2, "content");
            return (Criteria) this;
        }

        public Criteria andContentNotBetween(String value1, String value2) {
            addCriterion("content not between", value1, value2, "content");
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

        public Criteria andCommentedUserIdIsNull() {
            addCriterion("commented_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdIsNotNull() {
            addCriterion("commented_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdEqualTo(Integer value) {
            addCriterion("commented_user_id =", value, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdNotEqualTo(Integer value) {
            addCriterion("commented_user_id <>", value, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdGreaterThan(Integer value) {
            addCriterion("commented_user_id >", value, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("commented_user_id >=", value, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdLessThan(Integer value) {
            addCriterion("commented_user_id <", value, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("commented_user_id <=", value, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdIn(List<Integer> values) {
            addCriterion("commented_user_id in", values, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdNotIn(List<Integer> values) {
            addCriterion("commented_user_id not in", values, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdBetween(Integer value1, Integer value2) {
            addCriterion("commented_user_id between", value1, value2, "commentedUserId");
            return (Criteria) this;
        }

        public Criteria andCommentedUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("commented_user_id not between", value1, value2, "commentedUserId");
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

        public Criteria andForumPostCommentIdIsNull() {
            addCriterion("forum_post_comment_id is null");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdIsNotNull() {
            addCriterion("forum_post_comment_id is not null");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdEqualTo(Integer value) {
            addCriterion("forum_post_comment_id =", value, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdNotEqualTo(Integer value) {
            addCriterion("forum_post_comment_id <>", value, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdGreaterThan(Integer value) {
            addCriterion("forum_post_comment_id >", value, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("forum_post_comment_id >=", value, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdLessThan(Integer value) {
            addCriterion("forum_post_comment_id <", value, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdLessThanOrEqualTo(Integer value) {
            addCriterion("forum_post_comment_id <=", value, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdIn(List<Integer> values) {
            addCriterion("forum_post_comment_id in", values, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdNotIn(List<Integer> values) {
            addCriterion("forum_post_comment_id not in", values, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdBetween(Integer value1, Integer value2) {
            addCriterion("forum_post_comment_id between", value1, value2, "forumPostCommentId");
            return (Criteria) this;
        }

        public Criteria andForumPostCommentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("forum_post_comment_id not between", value1, value2, "forumPostCommentId");
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