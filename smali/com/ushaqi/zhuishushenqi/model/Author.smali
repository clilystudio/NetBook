.class public Lcom/ushaqi/zhuishushenqi/model/Author;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x40ad6b03bc158ea9L


# instance fields
.field private _id:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private lv:I

.field private nickname:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAvatar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLv()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->lv:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getScaleAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScaleAvatar(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-avatars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-avatarl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->type:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isOfficial()Z
    .locals 2

    .prologue
    .line 84
    const-string v0, "official"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->avatar:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->gender:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setLv(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->lv:I

    .line 73
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->nickname:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->type:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Author;->_id:Ljava/lang/String;

    .line 93
    return-void
.end method
