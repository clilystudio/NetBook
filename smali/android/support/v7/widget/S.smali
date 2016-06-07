.class final Landroid/support/v7/widget/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/L;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/L;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Landroid/support/v7/widget/S;->a:Landroid/support/v7/widget/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/L;B)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0, p1}, Landroid/support/v7/widget/S;-><init>(Landroid/support/v7/widget/L;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/S;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->e()V

    .line 1721
    return-void
.end method
