.class final Landroid/support/design/widget/B;
.super Landroid/support/design/widget/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/design/widget/A;


# direct methods
.method constructor <init>(Landroid/support/design/widget/A;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/support/design/widget/B;->a:Landroid/support/design/widget/A;

    invoke-direct {p0}, Landroid/support/design/widget/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/B;->a:Landroid/support/design/widget/A;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/A;->a(Landroid/support/design/widget/A;Z)Z

    .line 174
    return-void
.end method

.method public final b(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/design/widget/B;->a:Landroid/support/design/widget/A;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/A;->a(Landroid/support/design/widget/A;Z)Z

    .line 179
    iget-object v0, p0, Landroid/support/design/widget/B;->a:Landroid/support/design/widget/A;

    iget-object v0, v0, Landroid/support/design/widget/A;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method
