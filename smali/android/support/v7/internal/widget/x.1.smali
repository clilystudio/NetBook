.class final Landroid/support/v7/internal/widget/x;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Parcelable;

.field private synthetic b:Landroid/support/v7/internal/widget/AdapterViewCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/AdapterViewCompat;)V
    .locals 1

    .prologue
    .line 798
    iput-object p1, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 804
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput-boolean v5, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->m:Z

    .line 805
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget v1, v1, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    iput v1, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->s:I

    .line 806
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->c()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    .line 810
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->c()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget v0, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->s:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget v0, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    if-lez v0, :cond_1

    .line 812
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a(Landroid/support/v7/internal/widget/AdapterViewCompat;Landroid/os/Parcelable;)V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/os/Parcelable;

    .line 817
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->d()V

    .line 818
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    .line 819
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    .line 2121
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2122
    iput-boolean v5, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    .line 2124
    iget v1, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    if-ltz v1, :cond_3

    .line 2126
    iget v1, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    iget v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2127
    iget-wide v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    iput-wide v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->h:J

    .line 2128
    iget v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->n:I

    iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->g:I

    .line 2129
    if-eqz v1, :cond_2

    .line 2130
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 2132
    :cond_2
    iput v4, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->j:I

    goto :goto_0

    .line 2135
    :cond_3
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/AdapterViewCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2136
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->c()Landroid/widget/Adapter;

    move-result-object v2

    .line 2137
    iget v3, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    if-ltz v3, :cond_5

    iget v3, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2138
    iget v3, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->h:J

    .line 2142
    :goto_1
    iget v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->f:I

    iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->g:I

    .line 2143
    if-eqz v1, :cond_4

    .line 2144
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 2146
    :cond_4
    iput v5, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->j:I

    goto :goto_0

    .line 2140
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->h:J

    goto :goto_1
.end method

.method public final onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 823
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->m:Z

    .line 825
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->c()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->a(Landroid/support/v7/internal/widget/AdapterViewCompat;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/os/Parcelable;

    .line 832
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iget v1, v1, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    iput v1, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->s:I

    .line 833
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput v3, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->r:I

    .line 834
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->p:I

    .line 835
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->q:J

    .line 836
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput v2, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->n:I

    .line 837
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput-wide v4, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->o:J

    .line 838
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    iput-boolean v3, v0, Landroid/support/v7/internal/widget/AdapterViewCompat;->i:Z

    .line 840
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->d()V

    .line 841
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->b:Landroid/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    .line 842
    return-void
.end method
