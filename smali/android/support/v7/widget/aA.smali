.class final Landroid/support/v7/widget/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Landroid/support/v7/widget/aA;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/aA;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    sget-object v1, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/aM;

    iget-object v2, p0, Landroid/support/v7/widget/aA;->a:Landroid/support/v7/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/widget/aM;->a(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V

    .line 181
    :cond_0
    return-void
.end method
