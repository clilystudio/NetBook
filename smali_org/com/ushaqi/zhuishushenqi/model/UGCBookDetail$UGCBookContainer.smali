.class public Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field book:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

.field comment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public getBook()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->book:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->book:Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    .line 99
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->comment:Ljava/lang/String;

    .line 91
    return-void
.end method
