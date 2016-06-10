.class public Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mNotifBinders:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostReplyBinder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostDistillateBinder;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostPushBinder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/LinkPushBinder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentReplyBinder;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostHotBinder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/TweetComment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/TweetCommentRely;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/CommentLikeBinder;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostLikeBinder;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/PostVoteBinder;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/RetweetBinder;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/FollowBinder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinderFactory;->mNotifBinders:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p0, :cond_0

    .line 42
    new-instance p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;-><init>()V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getType()Ljava/lang/String;

    move-result-object v2

    .line 46
    sget-object v3, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinderFactory;->mNotifBinders:[Ljava/lang/Class;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 48
    :try_start_0
    const-string v0, "LABEL"

    .line 1141
    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lorg/apache/commons/lang3/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 48
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v0, v6

    invoke-static {v5, v0}, Lorg/apache/commons/lang3/a/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 62
    :goto_1
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Label field must be set for every NotifBinder."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 46
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :catch_2
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 58
    :catch_3
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 62
    :cond_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/UnknowBinder;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/UnknowBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    goto :goto_1
.end method
