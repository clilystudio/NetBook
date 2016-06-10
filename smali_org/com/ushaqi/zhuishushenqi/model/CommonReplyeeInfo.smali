.class public Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private floor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Author;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->_id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 17
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->floor:I

    .line 18
    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->floor:I

    return v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 38
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->_id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFloor(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;->floor:I

    .line 48
    return-void
.end method
