.class final Landroid/support/design/widget/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/ay;


# instance fields
.field private synthetic a:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Landroid/support/design/widget/as;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/au;)V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/design/widget/as;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->c(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/k;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/au;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->b(F)V

    .line 387
    return-void
.end method
