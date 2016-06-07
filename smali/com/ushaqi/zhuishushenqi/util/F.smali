.class public final Lcom/ushaqi/zhuishushenqi/util/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/util/F;->a:I

    .line 47
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/util/F;->b:F

    .line 48
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/F;->b:F

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/F;->a:I

    return v0
.end method
