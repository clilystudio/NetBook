.class final Landroid/support/v7/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;I)V

    .line 128
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;Z)Z

    .line 129
    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->b(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I

    .line 130
    return-void
.end method
