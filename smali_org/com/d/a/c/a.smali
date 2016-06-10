.class public Lcom/d/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-static {p0}, Lcom/d/a/c/c;->a(Landroid/content/Context;)Lcom/d/a/c/b;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/d/a/c/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "ffffffffffffffffffffffff"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/d/a/c/b;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
