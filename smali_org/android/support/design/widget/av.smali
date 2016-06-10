.class final Landroid/support/design/widget/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/aC;


# instance fields
.field private synthetic a:Landroid/support/design/widget/ay;

.field private synthetic b:Landroid/support/design/widget/au;


# direct methods
.method constructor <init>(Landroid/support/design/widget/au;Landroid/support/design/widget/ay;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Landroid/support/design/widget/av;->b:Landroid/support/design/widget/au;

    iput-object p2, p0, Landroid/support/design/widget/av;->a:Landroid/support/design/widget/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/design/widget/av;->a:Landroid/support/design/widget/ay;

    iget-object v1, p0, Landroid/support/design/widget/av;->b:Landroid/support/design/widget/au;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ay;->a(Landroid/support/design/widget/au;)V

    .line 133
    return-void
.end method
