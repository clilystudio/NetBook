.class public final Lcom/umeng/a/e;
.super Lcom/umeng/a/g;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lu/aly/cy;


# direct methods
.method public constructor <init>(Lu/aly/cy;I)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/umeng/a/g;-><init>()V

    .line 123
    iput p2, p0, Lcom/umeng/a/e;->a:I

    .line 124
    iput-object p1, p0, Lcom/umeng/a/e;->b:Lu/aly/cy;

    .line 125
    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/umeng/a/e;->b:Lu/aly/cy;

    invoke-virtual {v0}, Lu/aly/cy;->a()I

    move-result v0

    iget v1, p0, Lcom/umeng/a/e;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
