.class public Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public _id:Ljava/lang/String;

.field public end:Ljava/util/Date;

.field public highlight:Z

.field public login:Z

.field public postLink:Ljava/lang/String;

.field public start:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 24
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 27
    :cond_1
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;

    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
