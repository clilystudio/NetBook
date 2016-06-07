.class public Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x48d215f1803987eL


# instance fields
.field private comment:Z

.field private launch:Z

.field private post:Z

.field private share:Z

.field private share_book:Z

.field private vote:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isComment()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->comment:Z

    return v0
.end method

.method public isLaunch()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->launch:Z

    return v0
.end method

.method public isPost()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->post:Z

    return v0
.end method

.method public isShare()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->share:Z

    return v0
.end method

.method public isShare_book()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->share_book:Z

    return v0
.end method

.method public isVote()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->vote:Z

    return v0
.end method

.method public setComment(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->comment:Z

    .line 199
    return-void
.end method

.method public setLaunch(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->launch:Z

    .line 183
    return-void
.end method

.method public setPost(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->post:Z

    .line 191
    return-void
.end method

.method public setShare(Z)V
    .locals 0

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->share:Z

    .line 215
    return-void
.end method

.method public setShare_book(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->share_book:Z

    .line 223
    return-void
.end method

.method public setVote(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->vote:Z

    .line 207
    return-void
.end method
