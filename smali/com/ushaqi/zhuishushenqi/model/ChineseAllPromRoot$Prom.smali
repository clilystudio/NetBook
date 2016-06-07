.class public Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private __v:I

.field private _id:Ljava/lang/String;

.field private book_name:Ljava/lang/String;

.field private link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->book_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->link:Ljava/lang/String;

    return-object v0
.end method

.method public get__v()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->__v:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBook_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->book_name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->link:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public set__v(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->__v:I

    .line 40
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot$Prom;->_id:Ljava/lang/String;

    .line 32
    return-void
.end method
