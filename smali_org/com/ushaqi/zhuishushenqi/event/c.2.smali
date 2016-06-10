.class public final Lcom/ushaqi/zhuishushenqi/event/c;
.super Lcom/ushaqi/zhuishushenqi/event/e;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/event/e;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/c;->a:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/event/e;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/c;->a:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/c;->a:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/event/c;->a:Z

    return v0
.end method
