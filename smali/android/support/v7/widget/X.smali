.class final Landroid/support/v7/widget/X;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/Y;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Y;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    .line 33
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 39
    .line 1218
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move v1, v4

    :goto_1
    if-ltz v3, :cond_5

    .line 1219
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 1220
    iget v0, v0, Landroid/support/v7/widget/p;->a:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 1221
    if-eqz v1, :cond_1f

    move v9, v3

    .line 39
    :goto_2
    if-eq v9, v6, :cond_18

    .line 40
    add-int/lit8 v10, v9, 0x1

    .line 2045
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 2046
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/p;

    .line 2047
    iget v3, v1, Landroid/support/v7/widget/p;->a:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2163
    :pswitch_0
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    if-ge v3, v5, :cond_1b

    move v3, v6

    .line 2166
    :goto_3
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v8, v1, Landroid/support/v7/widget/p;->b:I

    if-ge v5, v8, :cond_1

    .line 2167
    add-int/lit8 v3, v3, 0x1

    .line 2169
    :cond_1
    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    iget v8, v0, Landroid/support/v7/widget/p;->b:I

    if-gt v5, v8, :cond_2

    .line 2170
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v8, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v5, v8

    iput v5, v0, Landroid/support/v7/widget/p;->b:I

    .line 2172
    :cond_2
    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    iget v8, v0, Landroid/support/v7/widget/p;->c:I

    if-gt v5, v8, :cond_3

    .line 2173
    iget v5, v0, Landroid/support/v7/widget/p;->c:I

    iget v8, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v5, v8

    iput v5, v0, Landroid/support/v7/widget/p;->c:I

    .line 2175
    :cond_3
    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    add-int/2addr v3, v5

    iput v3, v1, Landroid/support/v7/widget/p;->b:I

    .line 2176
    invoke-interface {p1, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2177
    invoke-interface {p1, v10, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1218
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move v9, v6

    .line 1228
    goto :goto_2

    .line 2067
    :pswitch_1
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v0, Landroid/support/v7/widget/p;->c:I

    if-ge v3, v5, :cond_7

    .line 2069
    iget v3, v1, Landroid/support/v7/widget/p;->b:I

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    if-ne v3, v5, :cond_1e

    iget v3, v1, Landroid/support/v7/widget/p;->c:I

    iget v5, v0, Landroid/support/v7/widget/p;->c:I

    iget v8, v0, Landroid/support/v7/widget/p;->b:I

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_1e

    move v3, v4

    move v5, v2

    .line 2082
    :goto_5
    iget v8, v0, Landroid/support/v7/widget/p;->c:I

    iget v11, v1, Landroid/support/v7/widget/p;->b:I

    if-ge v8, v11, :cond_8

    .line 2083
    iget v8, v1, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Landroid/support/v7/widget/p;->b:I

    .line 2098
    :cond_6
    iget v8, v0, Landroid/support/v7/widget/p;->b:I

    iget v11, v1, Landroid/support/v7/widget/p;->b:I

    if-gt v8, v11, :cond_9

    .line 2099
    iget v8, v1, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Landroid/support/v7/widget/p;->b:I

    move-object v8, v7

    .line 2108
    :goto_6
    if-eqz v5, :cond_a

    .line 2109
    invoke-interface {p1, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2110
    invoke-interface {p1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2111
    iget-object v1, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/Y;->a(Landroid/support/v7/widget/p;)V

    goto/16 :goto_0

    .line 2075
    :cond_7
    iget v3, v1, Landroid/support/v7/widget/p;->b:I

    iget v5, v0, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v5, v5, 0x1

    if-ne v3, v5, :cond_1d

    iget v3, v1, Landroid/support/v7/widget/p;->c:I

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v8, v0, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_1d

    move v3, v2

    move v5, v2

    .line 2077
    goto :goto_5

    .line 2084
    :cond_8
    iget v8, v0, Landroid/support/v7/widget/p;->c:I

    iget v11, v1, Landroid/support/v7/widget/p;->b:I

    iget v12, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v11, v12

    if-ge v8, v11, :cond_6

    .line 2086
    iget v3, v1, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/support/v7/widget/p;->c:I

    .line 2087
    iput v2, v0, Landroid/support/v7/widget/p;->a:I

    .line 2088
    iput v2, v0, Landroid/support/v7/widget/p;->c:I

    .line 2089
    iget v0, v1, Landroid/support/v7/widget/p;->c:I

    if-nez v0, :cond_0

    .line 2090
    invoke-interface {p1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2091
    iget-object v0, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/Y;->a(Landroid/support/v7/widget/p;)V

    goto/16 :goto_0

    .line 2100
    :cond_9
    iget v8, v0, Landroid/support/v7/widget/p;->b:I

    iget v11, v1, Landroid/support/v7/widget/p;->b:I

    iget v12, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v11, v12

    if-ge v8, v11, :cond_1c

    .line 2101
    iget v8, v1, Landroid/support/v7/widget/p;->b:I

    iget v11, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v8, v11

    iget v11, v0, Landroid/support/v7/widget/p;->b:I

    sub-int/2addr v8, v11

    .line 2103
    iget-object v11, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    iget v12, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v11, v2, v12, v8}, Landroid/support/v7/widget/Y;->a(III)Landroid/support/v7/widget/p;

    move-result-object v8

    .line 2104
    iget v11, v0, Landroid/support/v7/widget/p;->b:I

    iget v12, v1, Landroid/support/v7/widget/p;->b:I

    sub-int/2addr v11, v12

    iput v11, v1, Landroid/support/v7/widget/p;->c:I

    goto :goto_6

    .line 2116
    :cond_a
    if-eqz v3, :cond_f

    .line 2117
    if-eqz v8, :cond_c

    .line 2118
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v8, Landroid/support/v7/widget/p;->b:I

    if-le v3, v5, :cond_b

    .line 2119
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v8, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->b:I

    .line 2121
    :cond_b
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v8, Landroid/support/v7/widget/p;->b:I

    if-le v3, v5, :cond_c

    .line 2122
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v8, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->c:I

    .line 2125
    :cond_c
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    if-le v3, v5, :cond_d

    .line 2126
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v1, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->b:I

    .line 2128
    :cond_d
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    if-le v3, v5, :cond_e

    .line 2129
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->c:I

    .line 2148
    :cond_e
    :goto_7
    invoke-interface {p1, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget v1, v0, Landroid/support/v7/widget/p;->b:I

    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    if-eq v1, v3, :cond_13

    .line 2150
    invoke-interface {p1, v10, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :goto_8
    if-eqz v8, :cond_0

    .line 2155
    invoke-interface {p1, v9, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2132
    :cond_f
    if-eqz v8, :cond_11

    .line 2133
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v8, Landroid/support/v7/widget/p;->b:I

    if-lt v3, v5, :cond_10

    .line 2134
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v8, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->b:I

    .line 2136
    :cond_10
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v8, Landroid/support/v7/widget/p;->b:I

    if-lt v3, v5, :cond_11

    .line 2137
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v8, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->c:I

    .line 2140
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    if-lt v3, v5, :cond_12

    .line 2141
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v1, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->b:I

    .line 2143
    :cond_12
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    if-lt v3, v5, :cond_e

    .line 2144
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->c:I

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/support/v7/widget/p;->c:I

    goto :goto_7

    .line 2152
    :cond_13
    invoke-interface {p1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 2185
    :pswitch_2
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    if-ge v3, v5, :cond_15

    .line 2186
    iget v3, v1, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/support/v7/widget/p;->b:I

    move-object v3, v7

    .line 2193
    :goto_9
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v8, v1, Landroid/support/v7/widget/p;->b:I

    if-gt v5, v8, :cond_16

    .line 2194
    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Landroid/support/v7/widget/p;->b:I

    move-object v5, v7

    .line 2201
    :goto_a
    invoke-interface {p1, v10, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2202
    iget v0, v1, Landroid/support/v7/widget/p;->c:I

    if-lez v0, :cond_17

    .line 2203
    invoke-interface {p1, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2208
    :goto_b
    if-eqz v3, :cond_14

    .line 2209
    invoke-interface {p1, v9, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2211
    :cond_14
    if-eqz v5, :cond_0

    .line 2212
    invoke-interface {p1, v9, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2187
    :cond_15
    iget v3, v0, Landroid/support/v7/widget/p;->c:I

    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    iget v8, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v5, v8

    if-ge v3, v5, :cond_1a

    .line 2189
    iget v3, v1, Landroid/support/v7/widget/p;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/support/v7/widget/p;->c:I

    .line 2190
    iget-object v3, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    invoke-interface {v3, v13, v5, v2}, Landroid/support/v7/widget/Y;->a(III)Landroid/support/v7/widget/p;

    move-result-object v3

    goto :goto_9

    .line 2195
    :cond_16
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v8, v1, Landroid/support/v7/widget/p;->b:I

    iget v11, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v8, v11

    if-ge v5, v8, :cond_19

    .line 2196
    iget v5, v1, Landroid/support/v7/widget/p;->b:I

    iget v8, v1, Landroid/support/v7/widget/p;->c:I

    add-int/2addr v5, v8

    iget v8, v0, Landroid/support/v7/widget/p;->b:I

    sub-int v8, v5, v8

    .line 2198
    iget-object v5, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    iget v11, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v5, v13, v11, v8}, Landroid/support/v7/widget/Y;->a(III)Landroid/support/v7/widget/p;

    move-result-object v5

    .line 2199
    iget v11, v1, Landroid/support/v7/widget/p;->c:I

    sub-int v8, v11, v8

    iput v8, v1, Landroid/support/v7/widget/p;->c:I

    goto :goto_a

    .line 2205
    :cond_17
    invoke-interface {p1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2206
    iget-object v0, p0, Landroid/support/v7/widget/X;->a:Landroid/support/v7/widget/Y;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/Y;->a(Landroid/support/v7/widget/p;)V

    goto :goto_b

    .line 42
    :cond_18
    return-void

    :cond_19
    move-object v5, v7

    goto :goto_a

    :cond_1a
    move-object v3, v7

    goto :goto_9

    :cond_1b
    move v3, v4

    goto/16 :goto_3

    :cond_1c
    move-object v8, v7

    goto/16 :goto_6

    :cond_1d
    move v3, v2

    move v5, v4

    goto/16 :goto_5

    :cond_1e
    move v3, v4

    move v5, v4

    goto/16 :goto_5

    :cond_1f
    move v0, v1

    goto/16 :goto_4

    .line 2047
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
