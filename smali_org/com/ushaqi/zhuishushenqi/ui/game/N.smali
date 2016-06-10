.class public final Lcom/ushaqi/zhuishushenqi/ui/game/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/N;->a:I

    .line 25
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/N;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/N;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/N;->b:I

    return v0
.end method
