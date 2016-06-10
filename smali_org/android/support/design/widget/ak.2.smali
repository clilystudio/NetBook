.class final Landroid/support/design/widget/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/ay;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:I

.field private synthetic e:Landroid/support/design/widget/aj;


# direct methods
.method constructor <init>(Landroid/support/design/widget/aj;IIII)V
    .locals 0

    .prologue
    .line 1455
    iput-object p1, p0, Landroid/support/design/widget/ak;->e:Landroid/support/design/widget/aj;

    iput p2, p0, Landroid/support/design/widget/ak;->a:I

    iput p3, p0, Landroid/support/design/widget/ak;->b:I

    iput p4, p0, Landroid/support/design/widget/ak;->c:I

    iput p5, p0, Landroid/support/design/widget/ak;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/au;)V
    .locals 5

    .prologue
    .line 1458
    invoke-virtual {p1}, Landroid/support/design/widget/au;->f()F

    move-result v0

    .line 1459
    iget-object v1, p0, Landroid/support/design/widget/ak;->e:Landroid/support/design/widget/aj;

    iget v2, p0, Landroid/support/design/widget/ak;->a:I

    iget v3, p0, Landroid/support/design/widget/ak;->b:I

    invoke-static {v2, v3, v0}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ak;->c:I

    iget v4, p0, Landroid/support/design/widget/ak;->d:I

    invoke-static {v3, v4, v0}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/support/design/widget/aj;->a(Landroid/support/design/widget/aj;II)V

    .line 1462
    return-void
.end method
