.class public final Lcom/e/a/a/e/a;
.super Lcom/e/a/a/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/e/a/a/d/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/e/a/a/d/a;-><init>()V

    .line 1000
    invoke-super {p0, p1}, Lcom/e/a/a/d/a;->b(Landroid/os/Bundle;)V

    .line 0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/e/a/a/d/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/e/a/a/d/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
