.class final Lu/aly/bo;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lu/aly/bo;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/bh;

    .line 1610
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1613
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1614
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_9

    .line 1617
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1691
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1619
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_0

    .line 1620
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    .line 1621
    invoke-virtual {p2, v2}, Lu/aly/bh;->a(Z)V

    goto :goto_0

    .line 1623
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1627
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_1

    .line 1628
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    .line 1629
    invoke-virtual {p2, v2}, Lu/aly/bh;->b(Z)V

    goto :goto_0

    .line 1631
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1635
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_2

    .line 1636
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    .line 1637
    invoke-virtual {p2, v2}, Lu/aly/bh;->c(Z)V

    goto :goto_0

    .line 1639
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1643
    :pswitch_3
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_3

    .line 1644
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->d:I

    .line 1645
    invoke-virtual {p2, v2}, Lu/aly/bh;->d(Z)V

    goto :goto_0

    .line 1647
    :cond_3
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1651
    :pswitch_4
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_4

    .line 1652
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->e:I

    .line 1653
    invoke-virtual {p2, v2}, Lu/aly/bh;->e(Z)V

    goto :goto_0

    .line 1655
    :cond_4
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1659
    :pswitch_5
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_5

    .line 1660
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->f:I

    .line 1661
    invoke-virtual {p2, v2}, Lu/aly/bh;->f(Z)V

    goto/16 :goto_0

    .line 1663
    :cond_5
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1667
    :pswitch_6
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_6

    .line 1668
    invoke-virtual {p1}, Lu/aly/bN;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    .line 1669
    invoke-virtual {p2, v2}, Lu/aly/bh;->g(Z)V

    goto/16 :goto_0

    .line 1671
    :cond_6
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1675
    :pswitch_7
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_7

    .line 1676
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    .line 1677
    invoke-virtual {p2, v2}, Lu/aly/bh;->h(Z)V

    goto/16 :goto_0

    .line 1679
    :cond_7
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1683
    :pswitch_8
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_8

    .line 1684
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    .line 1685
    invoke-virtual {p2, v2}, Lu/aly/bh;->i(Z)V

    goto/16 :goto_0

    .line 1687
    :cond_8
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1695
    :cond_9
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1698
    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1699
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :cond_a
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1702
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_b
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1705
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_c
    invoke-virtual {p2}, Lu/aly/bh;->F()V

    .line 1
    return-void

    .line 1617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/bh;

    .line 1711
    invoke-virtual {p2}, Lu/aly/bh;->F()V

    .line 1713
    invoke-static {}, Lu/aly/bh;->G()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1714
    iget-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1715
    invoke-static {}, Lu/aly/bh;->H()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1716
    iget-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1719
    :cond_0
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1720
    invoke-static {}, Lu/aly/bh;->I()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1721
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1724
    :cond_1
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1725
    invoke-static {}, Lu/aly/bh;->J()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1726
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1729
    :cond_2
    invoke-static {}, Lu/aly/bh;->K()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1730
    iget v0, p2, Lu/aly/bh;->d:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1732
    invoke-static {}, Lu/aly/bh;->L()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1733
    iget v0, p2, Lu/aly/bh;->e:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1735
    invoke-static {}, Lu/aly/bh;->M()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1736
    iget v0, p2, Lu/aly/bh;->f:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1738
    iget-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 1739
    invoke-static {}, Lu/aly/bh;->N()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1740
    iget-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/nio/ByteBuffer;)V

    .line 1743
    :cond_3
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1744
    invoke-static {}, Lu/aly/bh;->O()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1745
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1748
    :cond_4
    iget-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1749
    invoke-static {}, Lu/aly/bh;->P()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1750
    iget-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1753
    :cond_5
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1754
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
