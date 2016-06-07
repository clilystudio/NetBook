.class final Landroid/support/design/widget/D;
.super Landroid/support/design/widget/C;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/design/widget/A;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/A;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Landroid/support/design/widget/D;->a:Landroid/support/design/widget/A;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/C;-><init>(Landroid/support/design/widget/A;B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/A;B)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Landroid/support/design/widget/D;-><init>(Landroid/support/design/widget/A;)V

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/design/widget/D;->a:Landroid/support/design/widget/A;

    invoke-static {v0}, Landroid/support/design/widget/A;->a(Landroid/support/design/widget/A;)F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/D;->a:Landroid/support/design/widget/A;

    invoke-static {v1}, Landroid/support/design/widget/A;->b(Landroid/support/design/widget/A;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
