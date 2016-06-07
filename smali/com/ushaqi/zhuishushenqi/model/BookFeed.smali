.class public Lcom/ushaqi/zhuishushenqi/model/BookFeed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fat:Z

.field private lastActionTime:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastActionTime()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->lastActionTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isFat()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->fat:Z

    return v0
.end method

.method public setFat(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->fat:Z

    .line 35
    return-void
.end method

.method public setLastActionTime(J)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->lastActionTime:J

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookFeed;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
