.class public Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private block:Ljava/lang/String;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/Tweet;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->this$0:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->block:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBlock(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->block:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->_id:Ljava/lang/String;

    .line 214
    return-void
.end method
