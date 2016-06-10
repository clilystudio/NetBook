.class final Landroid/support/v7/app/r;
.super Landroid/support/v7/app/o;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/app/q;


# direct methods
.method constructor <init>(Landroid/support/v7/app/q;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/o;-><init>(Landroid/support/v7/app/n;Landroid/view/Window$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/q;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1070
    new-instance v0, Landroid/support/v7/internal/view/d;

    iget-object v1, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    iget-object v1, v1, Landroid/support/v7/app/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 1074
    iget-object v1, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    .line 1558
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    if-eqz v2, :cond_0

    .line 1559
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    invoke-virtual {v2}, Landroid/support/v7/b/a;->c()V

    .line 1562
    :cond_0
    new-instance v2, Landroid/support/v7/app/x;

    invoke-direct {v2, v1, v0}, Landroid/support/v7/app/x;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/b/b;)V

    .line 1564
    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a()Landroid/support/v7/app/a;

    move-result-object v3

    .line 1565
    if-eqz v3, :cond_1

    .line 1566
    invoke-virtual {v3, v2}, Landroid/support/v7/app/a;->a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;

    move-result-object v3

    iput-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    .line 1572
    :cond_1
    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    if-nez v3, :cond_2

    .line 1574
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    .line 1577
    :cond_2
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    .line 1077
    if-eqz v1, :cond_3

    .line 1079
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/d;->b(Landroid/support/v7/b/a;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1081
    :cond_3
    const/4 v0, 0x0

    .line 58
    goto :goto_0

    .line 61
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v7/app/o;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
