.class public Lcom/ushaqi/zhuishushenqi/model/ReviewBook;
.super Lcom/ushaqi/zhuishushenqi/model/PostBook;
.source "SourceFile"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/PostBook;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->type:Ljava/lang/String;

    .line 19
    return-void
.end method
