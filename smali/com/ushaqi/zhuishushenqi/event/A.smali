.class public final Lcom/ushaqi/zhuishushenqi/event/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/event/A;->a:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/event/A;->a:I

    .line 18
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/event/A;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/event/A;->a:I

    return v0
.end method
