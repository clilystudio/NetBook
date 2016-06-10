.class public Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9f671eb736cc49L


# instance fields
.field private rate:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRate()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;->rate:Z

    return v0
.end method

.method public setRate(Z)V
    .locals 0

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;->rate:Z

    .line 295
    return-void
.end method
