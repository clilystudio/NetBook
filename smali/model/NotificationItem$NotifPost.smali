.class public Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->type:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->title:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->type:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$NotifPost;->_id:Ljava/lang/String;

    .line 232
    return-void
.end method
