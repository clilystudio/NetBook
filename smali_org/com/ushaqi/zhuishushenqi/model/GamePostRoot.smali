.class public Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private posts:[Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getPosts()[Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;->posts:[Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;->ok:Z

    .line 22
    return-void
.end method

.method public setPosts([Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;->posts:[Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    .line 30
    return-void
.end method
