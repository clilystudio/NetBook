.class public Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookCount:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;->bookCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBookCount(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;->bookCount:I

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot$Category;->name:Ljava/lang/String;

    .line 50
    return-void
.end method
