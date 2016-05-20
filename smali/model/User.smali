.class public Lcom/ushaqi/zhuishushenqi/model/User;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FEMALE:Ljava/lang/String; = "female"

.field private static final MALE:Ljava/lang/String; = "male"

.field private static final UNKNOWN:Ljava/lang/String; = "null"

.field private static final serialVersionUID:J = 0x3fc974b36036229eL


# instance fields
.field private _id:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private exp:I

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
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->exp:I

    return v0
.end method

.method public getFullAvatar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGenderFlag()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 107
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/model/User;->gender:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 115
    :goto_1
    :pswitch_0
    return v0

    .line 107
    :sswitch_0
    const-string v5, "male"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "female"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 111
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 113
    goto :goto_1

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c2f64b4 -> :sswitch_1
        0x33060d -> :sswitch_0
        0x33c587 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLv()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->lv:I

    if-gtz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->lv:I

    .line 70
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->lv:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/User;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDoyan()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "doyen"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/User;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOfficial()Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "official"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/User;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->avatar:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setExp(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->exp:I

    .line 64
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->gender:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->_id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLv(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->lv:I

    .line 75
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->nickname:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/User;->type:Ljava/lang/String;

    .line 91
    return-void
.end method
