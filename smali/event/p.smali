.class public final Lcom/ushaqi/zhuishushenqi/event/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/event/p;->a:I

    .line 23
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/event/p;->b:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    .line 35
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 26
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/event/p;->a:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/event/p;->b:Lcom/ushaqi/zhuishushenqi/db/AudioRecord;

    return-object v0
.end method
