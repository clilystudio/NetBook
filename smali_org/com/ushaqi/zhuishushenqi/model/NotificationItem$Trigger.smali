.class public Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private lv:I

.field private nickname:Ljava/lang/String;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->this$0:Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLv()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->lv:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->type:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->avatar:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->gender:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setLv(I)V
    .locals 0

    .prologue
    .line 296
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->lv:I

    .line 297
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->nickname:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->type:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->_id:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public toAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/Author;-><init>()V

    .line 309
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->lv:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setLv(I)V

    .line 310
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setAvatar(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setNickname(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem$Trigger;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Author;->setType(Ljava/lang/String;)V

    .line 313
    return-object v0
.end method
